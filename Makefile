# remove all cached files
clean:
	find . | grep -E "(.*cache|.next/|\.pyc|\.pyo$$)" | xargs rm -rf
