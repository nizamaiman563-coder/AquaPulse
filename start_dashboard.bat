@echo off
cd /d "%~dp0"
title AquaPulse Dashboard
python -m streamlit run app.py
pause
