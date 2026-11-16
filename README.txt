AquaPulse - Original Design / Flow + Tank Level
================================================
This update PRESERVES the original AquaPulse dashboard layout, colours,
sidebar, cards, pipeline graphic, flow chart, operating mix and event log.
The pressure sensor and pressure parameter have been replaced by water
tank level monitoring throughout the dashboard.

CHANGES
- Reservoir is replaced by the animated tank-level display.
- Pipeline sequence: Reservoir water level > Pump > Flow sensor > Isolation valve.
- The separate tank-level node is removed; all four nodes are evenly spaced.
- Tank fill, percentage and colour update every second in live simulation.
- Pressure KPI becomes tank water level (%).
- Pressure chart becomes a 0-100% water level chart with a 20% low threshold.
- Pressure fault becomes Low tank level in filters, Fault Lab and events.
- Low tank level stops the simulated pump and closes the simulated valve.
- Flow monitoring and delivered-volume monitoring are retained.

WINDOWS / ANACONDA PROMPT
Extract the whole AquaPulse_Live_Dashboard folder to Downloads, then run:

cd /d "%USERPROFILE%\Downloads\AquaPulse_Live_Dashboard"
python -m pip install -r requirements.txt
python -m streamlit run app.py

Or double-click start_dashboard.bat after installing requirements.
You may also open aquapulse_dashboard.html directly in your browser.
If an old dashboard is running, press Ctrl+C in its terminal first and restart.
Keep app.py and aquapulse_dashboard.html in the same folder.

LIVE DEMO
Select Live simulation for automatic 1-second updates. The original All
conditions mode automatically cycles through short faults after 45 seconds.
Select Normal operation for uninterrupted normal readings. Historical windows
are fixed, illustrative demo snapshots. Charts include prefilled demo samples.
Fault Lab lets you test low flow, low tank level and sensor failure.
Use Pause/Resume to stop/restart live updates and the tank wave animation.

All readings and equipment responses are SIMULATED. No real sensor,
ESP32, Raspberry Pi, MQTT, PLC, pump or valve is connected. The 20% alarm
is an illustrative setting, not a validated physical control specification.

VALIDATION
Python syntax and JavaScript logic checked. Tested fault/reset behaviour,
pause, date/condition filters, tank bounds, DOM identifiers and chart drawing
with a mocked browser API. Visual rendering was not verified in this environment.
