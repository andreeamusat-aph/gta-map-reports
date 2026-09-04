export const config = { runtime: 'edge' };

export default async function handler(req) {
  const cookie = req.headers.get('cookie') || '';
  const hasAuth = cookie.split(';').some(c => c.trim().startsWith('gta_auth='));

  if (hasAuth) {
    // Serve the report
    const url = new URL('/index.html', req.url);
    const res = await fetch(url);
    return new Response(res.body, {
      status: 200,
      headers: { 'Content-Type': 'text/html; charset=utf-8', 'Cache-Control': 'no-store' },
    });
  }

  // Serve login page
  const url = new URL('/login.html', req.url);
  const res = await fetch(url);
  return new Response(res.body, {
    status: 200,
    headers: { 'Content-Type': 'text/html; charset=utf-8', 'Cache-Control': 'no-store' },
  });
}
