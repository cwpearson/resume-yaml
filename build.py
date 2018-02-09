#! /usr/bin/env python3

from yaml import load
# from string import Template
from jinja2 import Template

content_path = "cv.yaml"
layout_path = "cv_template.tex"
tex_path = "cv.tex"

with open(content_path, 'r') as yaml_file:
    data = load(yaml_file)

with open(layout_path, 'r') as cv_file:
    src = Template(cv_file.read())

print(data)

output = src.render(data)

with open(tex_path, 'w') as tex_file:
    tex_file.write(output)