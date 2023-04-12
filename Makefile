# remove all cached files
clean:
	find . | grep -E "(.*_cache|.next/|\.pyc|\.pyo$$)" | xargs rm -rf
