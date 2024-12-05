import adapter from '@sveltejs/adapter-static';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';
import { handleHttpError } from '@sveltejs/kit';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	preprocess: vitePreprocess(),

	kit: {
		adapter: adapter(),
		hooks: {
			handleHttpError: async ({ error, request }) => {
				console.error('HTTP Error:', error);
				return {
					status: error.status || 500,
					body: {
						message: error.message || 'Internal Server Error'
					}
				};
			}
		}
	}
}

export default config;
