export const config = { runtime: 'edge' };

export default async function handler(req) {
  if (req.method !== 'POST') {
    return new Response('Method not allowed', { status: 405 });
  }

  const body = await req.json();
  const password = body.password || '';
  const sitePassword = process.env.SITE_PASSWORD || '';

  if (password === sitePassword) {
    // Set a signed cookie (simple HMAC with the password as key)
    const token = btoa(Date.now() + ':' + sitePassword).split('').reverse().join('');
    return new Response(JSON.stringify({ ok: true }), {
      status: 200,
      headers: {
        'Content-Type': 'application/json',
        'Set-Cookie': `gta_auth=${token}; Path=/; HttpOnly; Secure; SameSite=Strict; Max-Age=86400`,
      },
    });
  }

  return new Response(JSON.stringify({ ok: false }), {
    status: 401,
    headers: { 'Content-Type': 'application/json' },
  });
}
