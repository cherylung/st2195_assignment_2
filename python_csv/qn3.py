# -*- coding: utf-8 -*-
"""
Created on Sun Oct 10 16:19:19 2021

@author: chery
"""

import bs4 as bs
import pandas as pd
import urllib.request

link = "https://en.wikipedia.org/wiki/Comma-separated_values"
openlink = urllib.request.urlopen(link)
file = openlink.read()

