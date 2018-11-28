FROM python:3.7-slim

RUN pip3 install --upgrade pip && \
    pip3 install jupyter && \
    pip3 install pandas && \
    pip3 install numpy && \
    pip3 install matplotlib && \
    pip3 install sklearn

WORKDIR /hackathon_selection

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser", "--allow-root"]
