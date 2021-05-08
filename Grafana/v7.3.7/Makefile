clean:
	docker-compose down || true
	docker system prune -f
	rm -rf data
	rm -rf log
	mkdir -p data
	mkdir -p log

run:
	docker-compose up

clean-run: clean run
