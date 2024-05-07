.DEFAULT_GOAL = sync

sync:
	@echo "Syncing html files..."
	@ls|grep -v "CNAME\|Makefile"|xargs rm -rf
	@cp -r ../mlvp-portal/public/* ./
	@git add .
	@git commit -m build`date +%Y%m%d%H%M%S`
	@git push
