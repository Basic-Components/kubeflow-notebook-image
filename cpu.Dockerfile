FROM public.ecr.aws/j1r0q0g6/notebooks/notebook-servers/jupyter-tensorflow-full:v1.3.1-rc.0

# install - requirements.txt
#COPY --chown=jovyan:users pip.conf pip.conf
COPY --chown=jovyan:users requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /tmp/requirements.txt --quiet --no-cache-dir \
 && rm -f /tmp/requirements.txt