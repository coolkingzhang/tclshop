1: ע�⣬�����ر��pic�洢�ĳ��ȸĳɡ�300���

UPDATE t_about SET pic=REPLACE(pic, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_about SET r_pic=REPLACE(r_pic, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_about SET content=REPLACE(content, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_development SET pic=REPLACE(pic, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_development SET b_pic=REPLACE(b_pic, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_investors SET url=REPLACE(url, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_news SET pic=REPLACE(pic, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_news SET r_pic=REPLACE(r_pic, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_news SET content=REPLACE(content, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_news SET r_content=REPLACE(r_content, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_recruitment SET pic=REPLACE(pic, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');
UPDATE t_recruitment SET content=REPLACE(content, '/attached', 'https://s3.cn-north-1.amazonaws.com.cn/f0.tcl.com/news/attached');


UPDATE t_about SET NAME = 1 WHERE years >= 1999;
UPDATE t_about SET NAME = 2 WHERE years >= 1992 AND years < 1999;
UPDATE t_about SET NAME = 3 WHERE years <= 1991;
SELECT * FROM t_about WHERE TYPE = 3 AND years <= 1991;

2��t_about ��չ���̵�sort������ֵ����Ȼ�鲻����

update t_about set sort=1 where t_about.name=3 and type=3
update t_about set sort=1 where t_about.name=2 and type=3

3��t_recruitment ���sort������ֵ����Ȼǰ̨��鲻������sort��status��Ĭ��ֵ�� ����Ϊ 1
���status Ĭ��ֵΪ 1

update t_recruitment set `status`=1
