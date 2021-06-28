FROM teslamate/teslamate-grafana:latest

ENV GF_PATHS_PLUGINS="/var/lib/grafana-plugins" \
    
RUN grafana-cli --pluginsDir "${GF_PATHS_PLUGINS}" plugins install natel-plotly-panel 

EXPOSE 3000
