FROM python
WORKDIR /test_project/
COPY requirements.txt .
COPY . .
RUN pip install -r requirements.txt
ENV ENV=dev
CMD python -m pytest -s --alluredir=test_results/ /tests_project/tests/