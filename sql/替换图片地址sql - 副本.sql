UPDATE t_about SET pic=REPLACE(pic, '/attached', 'http://news.tcl.com/attached');
UPDATE t_about SET r_pic=REPLACE(r_pic, '/attached', 'http://news.tcl.com/attached');
UPDATE t_about SET content=REPLACE(content, '/attached', 'http://news.tcl.com/attached');

UPDATE t_development SET pic=REPLACE(pic, '/attached', 'http://news.tcl.com/attached');
UPDATE t_development SET b_pic=REPLACE(b_pic, '/attached', 'http://news.tcl.com/attached');

UPDATE t_investors SET url=REPLACE(url, '/attached', 'http://news.tcl.com/attached');

UPDATE t_news SET pic=REPLACE(pic, '/attached', 'http://news.tcl.com/attached');
UPDATE t_news SET r_pic=REPLACE(r_pic, '/attached', 'http://news.tcl.com/attached');
UPDATE t_news SET content=REPLACE(content, '/attached', 'http://news.tcl.com/attached');
UPDATE t_news SET r_content=REPLACE(r_content, '/attached', 'http://news.tcl.com/attached');

UPDATE t_recruitment SET pic=REPLACE(pic, '/attached', 'http://news.tcl.com/attached');
UPDATE t_recruitment SET content=REPLACE(content, '/attached', 'http://news.tcl.com/attached');
