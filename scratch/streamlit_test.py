"""
# My first app
Here's our first attempt at using data to create a table:
"""

import streamlit as st
import pandas as pd
import numpy as np

x = st.slider('x')
st.write(x, x*x)

df = pd.DataFrame(
    np.random.randn(10, 3)
)
if st.checkbox("Show df?"):
    st.write(df.style.highlight_max(axis=0))
    st.line_chart(df)

st.help(pd.DataFrame)