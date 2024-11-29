.DEFAULT_GOAL = sync

sync:
	@echo "Syncing html files..."
	@mv UnityChipForXiangShan/data/reports ../
	@ls|grep -v "CNAME\|Makefile"|xargs rm -rf
	@cp -r ../mlvp-portal/public/* ./
	@rm -rf UnityChipForXiangShan/data/reports
	@mv ../reports UnityChipForXiangShan/data/
	@git add .
	@git commit -m build`date +%Y%m%d%H%M%S` || echo "nothing to commit, skip"
	@git push
