css_content <- '
body {
  font-family: "Roboto", "Helvetica Neue", Arial, sans-serif;
  color: #333333;
}

h1, h2, h3, h4 {
  font-family: "Montserrat", "Helvetica Neue", Arial, sans-serif;
  font-weight: 600;
  color: #1b3a57;
}

h1.title {
  border-bottom: 3px solid #1b3a57;
  padding-bottom: 5px;
  margin-bottom: 20px;
}

.section-number {
  color: #999999;
}

/* Panels / cards */
.box {
  border-radius: 6px;
  padding: 15px 20px;
  margin-bottom: 15px;
  border: 1px solid #e0e0e0;
}

.box-primary {
  border-left: 4px solid #2E86AB;
}

.box-success {
  border-left: 4px solid #3DA35D;
}

.box-warning {
  border-left: 4px solid #F39C12;
}

.box-danger {
  border-left: 4px solid #C0392B;
}

/* Nice tables */
table {
  font-size: 0.9em;
}

.table thead th {
  background-color: #1b3a57;
  color: white;
}

/* Plot captions */
.caption {
  font-size: 0.85em;
  color: #666666;
  font-style: italic;
}

/* Small tags / pills */
.tag {
  display: inline-block;
  padding: 3px 8px;
  border-radius: 10px;
  font-size: 0.8em;
  color: white;
  background-color: #2E86AB;
  margin-right: 5px;
  margin-bottom: 3px;
}
'
writeLines(css_content, "styles.css")
getwd()