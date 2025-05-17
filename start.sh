#!/bin/bash
export TF_ENABLE_ONEDNN_OPTS=0
export TF_CPP_MIN_LOG_LEVEL=2
exec uvicorn main:app --host 0.0.0.0 --port ${PORT:-8080}
