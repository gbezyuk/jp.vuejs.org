update: bump
	rm -rf public db.json
	hexo generate

deploy:
	hexo deploy

test:
	npm test

bump:
	cd ../vue && \
		git checkout -- dist && \
		git checkout dev && \
		npm run build
	cp ../vue/dist/vue.min.js themes/vue/source/js/vue.min.js
	cp ../vue/dist/vue.js themes/vue/source/js/vue.js
	node update.js
