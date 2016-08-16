--�����������ۼ�¼
DROP TABLE CLOUD_EMR_SWBLTLJL;
CREATE TABLE CLOUD_EMR_SWBLTLJL(
	GUID VARCHAR2(32) NOT NULL,
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	SWRQ VARCHAR2(20),--��������
	SWYY NVARCHAR2(64),--����ԭ��
	TLRQ VARCHAR2(20),--��������
	JLZ VARCHAR2(32),--��¼��
	CJTLRY VARCHAR2(2000),--�μ�������Ա
	FYJL CLOB,--���Լ�¼
	ZCRSQ VARCHAR2(32),--��������ǩ
	JLZQM VARCHAR2(32),--��¼��ǩ��
	CREATE_ID VARCHAR2(32), 
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--��Ѫ����֪��ͬ����*
DROP TABLE CLOUD_EMR_SXZLZQTYS;
CREATE TABLE CLOUD_EMR_SXZLZQTYS(
	GUID VARCHAR2(32) NOT NULL,
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	LCZD NVARCHAR2(2000),--�ٴ����
	SXMD NVARCHAR2(200),--��ѪĿ��
	XUEXING CHAR(1),--Ѫ��
	SXX NVARCHAR2(200),--��Ѫʷ
	SXQJC VARCHAR2(300),--��Ѫǰ��飨��ѡ��
	JC_ALT VARCHAR2(10),--���altֵ
	JC_KHCV VARCHAR2(10),--���KHCV
	JC_HIV VARCHAR2(10),--���HIV
	JC_HBSAG VARCHAR2(10),--HBSAG
	JC_HBSAB VARCHAR2(10),--���HBSABֵ
	JC_HBEAG VARCHAR2(10),--���HBEAGֵ
	JC_HBEAB VARCHAR2(10),--���altֵ
	JC_HBCAB VARCHAR2(10),--���HBEABֵ
	JC_MEIDU VARCHAR2(10),--���MEIDUֵ
	NSXFA CHAR(1),--��Ѫ����
	SXCF VARCHAR2(32),--��Ѫ�ɷ�
	QT VARCHAR2(32),--����
	QTSX NVARCHAR2(200),--����ע������
	HZQM VARCHAR2(64),--����ǩ��
	QMRQ VARCHAR2(20),--ǩ������
	YHZGX VARCHAR(32),--�뻼�߹�ϵ
	CREATE_ID VARCHAR2(32),
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--����������ɸ��֪��ͬ����*
DROP TABLE CLOUD_EMR_XSETLSCZQTYS;
CREATE TABLE CLOUD_EMR_XSETLSCZQTYS(
	GUID VARCHAR2(32) NOT NULL,
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	CSRQ VARCHAR2(20),--��������
	CSTZ VARCHAR2(10),--��������
	TAILIN VARCHAR2(10),--̥��
	BSLJ CHAR(1),--��ʾ��⣨���ܣ������ܣ�
	QSQM NVARCHAR2(64),--����ǩ��
	YS VARCHAR2(32),--ҽʦǩ��
	YXSRGX NVARCHAR2(32),--����������ϵ
	JSQMRQ VARCHAR2(20),--ǩ������
	YSQMRQ VARCHAR2(20)��--ҽ��ǩ������
	CREATE_ID VARCHAR2(32),
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--������¼
DROP TABLE CLOUD_EMR_SWJL;
CREATE TABLE CLOUD_EMR_SWJL(
	GUID VARCHAR2(32) NOT NULL,
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	SSRQ VARCHAR2(20),--��������
	SSMC NVARCHAR2(200),--��������
	SWRI VARCHAR(20),--��������
	ZYTS VARCHAR(10),--סԺ����
	RYSQK CLOB,--��Ժ���
	ZLJG CLOB,--���ƾ���
	SWYY NVARCHAR2(2000),--����ԭ��
	XGPH VARCHAR2(32),--X��Ƭ��
	CTH VARCHAR2(32),--CT��
	MRIH VARCHAR2(32),--MRI��
	BLH VARCHAR2(32),--�����
	YSQM VARCHAR2(32),--ҽʦǩ��
	SJYSQM VARCHAR2(32),--�ϼ�ҽʦǩ��
	CREATE_ID VARCHAR2(32),
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1), 
	PRIMARY KEY (GUID)
);

--����֪��ͬ����*
DROP TABLE CLOUD_EMR_MZZQTYS;
CREATE TABLE CLOUD_EMR_MZZQTYS(
	GUID VARCHAR2(32) NOT NULL,
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	SSYY NVARCHAR2(64),--����ԭ��
	NSSRQ VARCHAR2(10),--��������
	SSMC VARCHAR2(64),--��������
	MZFA CHAR(1),--������
	MZFAQT NVARCHAR2(64),--����������
	ZTBSY CHAR(1),--��ʹ��ʹ�÷�
	BFZ VARCHAR2(8),--����֢
	HZQM NVARCHAR2(64),--����ǩ��
	MZYS VARCHAR2(32),--����ҽ��
	YHZGX NVARCHAR2(32),--�뻼�߹�ϵ
	QMRI VARCHAR2(10),--ǩ������
	YSQMRQ VARCHAR2(10),--ҽ��ǩ������
	CREATE_ID VARCHAR2(32),
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--��Ժ��¼
DROP TABLE CLOUD_EMR_CYJL;
CREATE TABLE CLOUD_EMR_CYJL(
	GUID VARCHAR2(32) NOT NULL,
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	SSMC NVARCHAR2(64),--��������
	CYRQ VARCHAR2(32),--��Ժ����
	RYSQK CLOB,--��Ժʱ���
	ZLJG CLOB,--���ƾ���
	CYQK CLOB,--��Ժ���
	SKYH CLOB,--�˿�����
	CYYZ CLOB,--��Ժҽ��
	XGPH VARCHAR2(32),--X��Ƭ��
	CTH VARCHAR2(32),--CT��
	MRIH VARCHAR2(32),--MRI��
	BLH VARCHAR2(32),--�����
	QSR NVARCHAR2(64),--ǩ����
	ZZYS VARCHAR2(32),--����ҽʦ
	YS VARCHAR2(32),--ҽʦǩ��
	CREATE_ID VARCHAR2(32),
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--������Ϣ
DROP TABLE CLOUD_EMR_SSXX;
CREATE TABLE CLOUD_EMR_SSXX (
	GUID VARCHAR2(32) NOT NULL, 
	TREE_ID VARCHAR2(32), 
	BRBH VARCHAR2(32), 
	JZXH varchar2(32),-- �������
	SSRQ VARCHAR2(20), 
	SSJB VARCHAR2(4), 
	SSZ VARCHAR2(32), 
	ZS1 VARCHAR2(32), 
	ZS2 VARCHAR2(320), 
	QKDJ VARCHAR2(4), 
	YHDJ VARCHAR2(4), 
	MZFS VARCHAR2(4), 
	MZYS VARCHAR2(32), 
	CREATE_ID VARCHAR2(32), 
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--������Ϣ��������
DROP TABLE CLOUD_EMR_SSXX_SS;
CREATE TABLE CLOUD_EMR_SSXX_SS (
	GUID VARCHAR2(32) NOT NULL, 
	PARENT_ID VARCHAR2(32), 
	BRBH VARCHAR2(32),
	JZXH varchar2(32),-- �������
	SSBM VARCHAR2(32), 
	SSMC VARCHAR2(60), 
	SSRQ VARCHAR2(20), 
	SSJB VARCHAR2(4), 
	SSZ VARCHAR2(32), 
	ZS1 VARCHAR2(32), 
	ZS2 VARCHAR2(32), 
	QKDJ VARCHAR2(4), 
	YHDJ VARCHAR2(4), 
	MZFS VARCHAR2(4), 
	MZYS VARCHAR2(32), 
	SEQ NUMBER, 
	CREATE_ID VARCHAR2(32), 
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--����֪��ͬ��������
DROP TABLE CLOUD_EMR_SSZQTYS;
CREATE TABLE CLOUD_EMR_SSZQTYS (
	 GUID VARCHAR2(32) NOT NULL,
	 TREE_ID VARCHAR2(32),--��ڵ�id
	 BRBH VARCHAR2(32),--���˱��
	 JZXH varchar2(32),-- �������
	 ZD  VARCHAR2(32),--�������
	 MZFF VARCHAR2(32),--������
	 SSMC VARCHAR2(200),--��������
	 SSMD VARCHAR2(32),--����Ŀ�ģ���ѡid��
	 QTSSMD VARCHAR2(100),--��������Ŀ��
	 FXGZ VARCHAR2(32),--���ո�֪����ѡid��
	 QM VARCHAR2(32),--ǩ��
	 HZGX VARCHAR(32),--�뻼�߹�ϵ
	 QTZLFF VARCHAR2(32),--�������Ʒ���
	 JZYSQM VARCHAR2(64),--����ҽʦǩ��
	 SSYSQM VARCHAR2(64),--����ҽʦǩ��
	 CREATE_ID VARCHAR2(32), 
	 CREATE_TIME VARCHAR2(20), 
	 MODIFY_ID VARCHAR2(32), 
	 MODIFY_TIME VARCHAR2(20), 
	 DEL_FLAG CHAR(1) DEFAULT '0', 
	 PRIMARY KEY (GUID)
);

--����֪��ͬ�����ӱ�
DROP TABLE CLOUD_EMR_SSZQTYS_FXGZ;
CREATE TABLE CLOUD_EMR_SSZQTYS_FXGZ(
	GUID VARCHAR2(32) NOT NULL,
	PARENT_ID VARCHAR2(32),
	SEQ NUMBER(10),
	CONTENT VARCHAR2(200),
	CREATE_ID VARCHAR2(32), 
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--��ǰС��
DROP TABLE CLOUD_EMR_SQXJ;
CREATE TABLE CLOUD_EMR_SQXJ(
	GUID VARCHAR2(32) NOT NULL,
	TREE_ID VARCHAR2(32),--���ڵ�id
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	BSZY VARCHAR2(4000),--��ʷժҪ
	ZDYJ VARCHAR2(4000),--�������
	SSZZBQPG VARCHAR2(4000),--����ָ������������
	NXSS VARCHAR2(32), --��������
	SSLB CHAR(1), --�������
	NSSSSJ VARCHAR2(20),--��������ʱ��
	SSJB VARCHAR2(4), --��������
	NSSZ VARCHAR2(32),--��������
	NXMZ VARCHAR2(32),--��������
	HB VARCHAR2(32), --Hb
	XX VARCHAR2(32),--Ѫ��
	BLXQ CHAR(1),--���ޱ���Ѫ��
	NXMYSJ VARCHAR2(20), --��Ѫøԭʱ��
	HHBFNXHMSJ VARCHAR2(20),--�������Ѫ��øʱ��
	XXB VARCHAR2(32),--ѪС��
	GGN VARCHAR2(32),--�ι���
	HBSAG VARCHAR2(32),--HBsAg
	BUN VARCHAR2(32),--BUN
	CR VARCHAR2(32),--Cr
	XT VARCHAR2(32),--Ѫ��
	KPLUS VARCHAR2(32),--K+
	NAPLUS VARCHAR2(32),--Na+
	CLMINUS VARCHAR2(32),--CL-
	XDT VARCHAR2(100),--�ĵ�ͼ
	QTSYSJC VARCHAR2(500),--����ʵ�����йؼ��
	PLKYPS VARCHAR2(32),--��³����Ƥ��
	WGFZ CHAR(1),--θ�ܷ���
	DLGFZ CHAR(1),--����ܷ���
	SQYSX VARCHAR2(32),--��ǰ����Ѫ
	SZBX VARCHAR2(32),--���б�Ѫ
	QTSQZB VARCHAR2(500),--������ǰ׼��
	TSSSSQTL CHAR(1), --���⡢�ġ�������ǰ���ۣ��ѣ�δ��
	ZQTYSQD CHAR(1),--����֪��ͬ�����Ƿ�ǩ��
	SQCKHZQK CHAR(1),--��ǰ�鿴����״��
	ZYSX VARCHAR2(2000),--ע������
	ZZYS VARCHAR2(32),--����ҽʦ
	ZYZS VARCHAR2(32),--סԺҽʦ
	CREATE_ID VARCHAR2(32), 
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--�ٹ���������¼
DROP TABLE CLOUD_EMR_PGCSSJL;
CREATE TABLE CLOUD_EMR_PGCSSJL (
	GUID VARCHAR2(32) NOT NULL,
	TREE_ID VARCHAR2(32), --���ڵ�id
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	KSSJ VARCHAR2(20),--��ʼʱ��
	JSSJ VARCHAR2(20),--����ʱ��
	HS VARCHAR2(32),--��ʿ
	HQK VARCHAR2(16),--���п�
	ZGX VARCHAR2(10),--�ӹ���ת����
	ZGXD CHAR(1),--�ӹ��¶Σ�1�γ����ã�2�����γɣ�3δ�γɣ�
	YCSNG CHAR(1),--�Ҳ����ѹܣ��������쳣��
	ZCSNG CHAR(1),--������ѹ� ���������쳣��
	PGFMS VARCHAR2(10),--���׸�Ĥ��
	ZGMCCD VARCHAR2(10),--�㹻���������
	ZXQK VARCHAR2(10),--�����п�
	XL CHAR(1),--��¶���߸������룬�̶���
	YSL VARCHAR2(10),--��ˮ��
	QING CHAR(1),--�壺I II III
	TOU VARCHAR2(10), --ͷλ
	TOU2 VARCHAR2(10),--ͷλ2
	TTNY CHAR(1),--̥ͷ���ף����ף����ѣ�
	TUN VARCHAR2(10),--��λ
	TAIZU CHAR(1),--̥�㣨���ң�
	TWNY CHAR(1),--��λ���ף����ף����ѣ�
	XB CHAR(1),--�Ա�
	TIZHONG VARCHAR2(10),--����
	APGAR1 VARCHAR2(10),--1����Apgar����
	APGAR5 VARCHAR2(10),--5����Apgar����
	JIXING CHAR(1),--�Ƿ����
	TAIPAN CHAR(1),--̥�̣��˹�����Ȼ���룩
	TPZL CHAR(1),--̥�����ࣨϣ�ϣ����ϣ�
	TPXZ CHAR(1),--̥����״����������������������̬��
	QDRJ VARCHAR2(10),--����ƾ�Ȧ��
	QDRZ VARCHAR2(10),--�������Ȧ��
	QDCD VARCHAR2(10),--�������
	QDQT VARCHAR2(100),--�������
	GONGTI VARCHAR2(10),--����
	JINGZHU VARCHAR2(10),--��ע
	ADSC VARCHAR2(10),--��������
	MSQLC VARCHAR2(10),--����ǰ�д�
	GSJQT VARCHAR2(100),--����������
	ZGQK CHAR(1),--�ӹ��пڣ��У��ޣ�
	ZGQKCD VARCHAR2(10),--�ӹ��пڳ���
	ZGJX CHAR(1),--�ӹ����޻���
	ZGGL CHAR(1),--�ӹ���������
	FHFS CHAR(1),--��Ϸ�ʽ
	LXFH VARCHAR2(10),--��������ߺ�
	LXFHXZ VARCHAR2(10),--�����������
	DYC VARCHAR2(10),--��һ�����ߺ�
	DYCXZ VARCHAR2(10),--��һ������
	DERC VARCHAR2(10),--�ڶ������ߺ�
	DERCXZ VARCHAR2(10),--�ڶ�������
	PGFMFH CHAR(1),--���׸�Ĥ���޷�ϣ��У��ޣ�
	XUEZHONG CHAR(1),--����Ѫ��
	ZXFF VARCHAR2(32),--ֹѪ������
	JRFH CHAR(1),--���޼�����
	FZJQQ CHAR(1),--��ֱ��ǰ�ʣ�0������1��ϣ�
	PXZFFH CHAR(1),--����Ƥ��֬�����
	PIFUX VARCHAR2(10),--Ƥ��
	PFXZ VARCHAR2(10),--Ƥ������
	SZNL VARCHAR2(10),--��������
	CHUXUE VARCHAR2(10),--��Ѫ
	SHUYE VARCHAR2(10),--��Һ
	SHUXUE VARCHAR2(10),--��Ѫ
	SZQTYCCL VARCHAR(1000),--���������쳣�������
	CREATE_ID VARCHAR2(32), 
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--������ȫ�˲��
DROP TABLE CLOUD_EMR_SSAQHCB;
CREATE TABLE CLOUD_EMR_SSAQHCB (
	GUID VARCHAR2(32) NOT NULL,
	TREE_ID VARCHAR2(32), --���ڵ�id
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	MZQ_HZXX CHAR(1),--����ǰ������Ϣ��ȷ
	MZQ_SSFS CHAR(1),--����ǰ������ʽ
	MZQ_SSBW CHAR(1),--����ǰ������λ
	MZQ_SSZQTY CHAR(1),--����ǰ����֪��ͬ��
	MZQ_MZFS CHAR(1),--����ǰ����ʽȷ��
	MZQ_MZSBAQ CHAR(1),--����ǰ�����豸������
	MZQ_PFWZ CHAR(1),--����ǰƤ���Ƿ�����
	MZQ_SYPFZB CHAR(1),--����ǰ��ҰƤ��׼��
	MZQ_JMTD CHAR(1),--����ǰ����ͨ��׼��
	MZQ_HZGMS CHAR(1),--����ǰ���߹���ʷ
	MZQ_PSJG CHAR(1),--����ǰƤ�Խ��
	MZQ_SQBX CHAR(1),--����ǰ��ǰ��Ѫ
	MZQ_SHUYE CHAR(1),--����ǰ��Һ
	MZQ_TNZRW CHAR(1),--����ǰ����ֲ����
	MZQ_YXXZL CHAR(1),--����ǰӰ��ѧ����
	MZQ_QT VARCHAR2(100),--����ǰ����
	SSQ_HZXX CHAR(1),--������ʼǰ������Ϣ��ȷ
	SSQ_SSFS CHAR(1),--������ʼǰ������ʽ
	SSQ_SSBW CHAR(1),--������ʼǰ������λ
	SSQ_YJSSSJ CHAR(1),--������ʼǰԤ������ʱ��
	SSQ_YJSXL CHAR(1),--������ʼǰԤ��ʧѪ��
	SSQ_SSGZD CHAR(1),--������ʼǰ������ע��
	SSQ_YSCHQT CHAR(1),--������ʼǰҽʦ��������
	SSQ_MZGZD CHAR(1),--������ʼǰ�����ע��
	SSQ_MZYSCSQT CHAR(1),--������ʼǰ����ҽʦ��������
	SSQ_WPMJ CHAR(1),--������ʼǰ��Ʒ���
	SSQ_YQSB CHAR(1),--������ʼǰ�����豸
	SSQ_TSYY CHAR(1),--������ʼǰ������ҩ
	SSQ_HSCSQT CHAR(1),--������ʼǰ��ʿ��������
	SSQ_SFXYYXZL CHAR(1),--������ʼǰ�Ƿ���ҪӰ������
	SSQ_QT VARCHAR2(100),--������ʼǰ����
	HZLKQ_HZXX CHAR(1),--�����뿪ǰ������Ϣ��ȷ
	HZLKQ_SSFS CHAR(1),--�����뿪ǰ������ʽ��ȷ
	HZLKQ_SSYY CHAR(1),--�����뿪ǰ������ҩ��ȷ
	HZLKQ_SSYW CHAR(1),--�����뿪ǰ�����������
	HZLKQ_SSBB CHAR(1),--�����뿪ǰ�����걾
	HZLKQ_PFWZ CHAR(1),--�����뿪ǰƤ������
	HZLKQ_ZXJM CHAR(1),--�����뿪ǰ���ľ���ͨ·
	HZLKQ_DMTL CHAR(1),--�����뿪ǰ����ͨ·
	HZLKQ_QGCG CHAR(1),--�����뿪ǰ�����ܲ��
	HZLKQ_SKYL CHAR(1),--�����뿪ǰ�˿�����
	HZLKQ_WG CHAR(1),--�����뿪ǰθ��
	HZLKQ_NG CHAR(1),--�����뿪ǰ���
	HZLKQ_GLQT CHAR(1),--�����뿪ǰ��·����
	HZLKQ_HZQX CHAR(1),--�����뿪ǰ����ȥ��
	HZLKQ_QT VARCHAR2(100),--�����뿪ǰ����
 	CREATE_ID VARCHAR2(32), 
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--�ι�������¼
DROP TABLE CLOUD_EMR_GGSSJL;
CREATE TABLE CLOUD_EMR_GGSSJL(
	GUID VARCHAR2(32) NOT NULL,
	TREE_ID VARCHAR2(32), --���ڵ�id
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	ZGW CHAR(1),--����ӹ�λ��ǰ���У���
	ZGDX CHAR(1),--����ӹ���С
	FUJIAN CHAR(1),--�������������쳣��
	SQGQSD VARCHAR(20),--��ǰ��ǻ���
	SHGQSD VARCHAR(20),--��ǰ��ǻ���
	HGSKZGJ1 VARCHAR2(20),--���������Ź���1
	HGSKZGJ2 VARCHAR2(20),--���������Ź���2
	XIGUAN CHAR(1),--����6.7.8
	XICHUWU VARCHAR(32),--������
	CXL VARCHAR2(32),--��Ѫ��
	ZZBJ CHAR(1),--��֯���죨�ͣ�δ�ͣ�
	CCS VARCHAR2(10),--�߲���
	MJXN VARCHAR2(10),--�������
	GYFF CHAR(1),--��ҩ���������������⣬������
	GYSJ CHAR(1),--��ҩʱ�䣨��ǰ�����У�����
	JYQHH VARCHAR2(16),--����������
	LIUWEI CHAR(1),--��β���У��ޣ�
	MZND VARCHAR2(16),--����Ũ��
	CHANGDU VARCHAR2(32),--������
	SSSJNC VARCHAR2(64),--��������ů��
	SSSJSNG VARCHAR2(64),--�����������ѹ�
	SSFF CHAR(1),--�����������н��˰��񷨡������г����������жϷ�����
	SSFFQT VARCHAR2(64),--������������
	SSGJ CHAR(1),--����������˳������ȡ�����ѣ�
	CXL2 VARCHAR2(32),--��Ѫ��2
	ZZBJ2 CHAR(1),--��֯����2��2��
	SZTSQK VARCHAR2(256),--�����������
	CREATE_ID VARCHAR2(32), 
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);

--�ʹ�������ͬ����
DROP TABLE CLOUD_EMR_GGCSSTYS;
CREATE TABLE CLOUD_EMR_GGCSSTYS (
	GUID VARCHAR2(32) NOT NULL,
	TREE_ID VARCHAR2(32), --���ڵ�id
	BRBH VARCHAR2(32),--���˱��
	JZXH varchar2(32),-- �������
	SSRI VARCHAR(20),--����������
	SSZZ VARCHAR(32),--����ָ��
	HZDLRQZ VARCHAR2(43),--����ǩ��
	CREATE_ID VARCHAR2(32), 
	CREATE_TIME VARCHAR2(20), 
	MODIFY_ID VARCHAR2(32), 
	MODIFY_TIME VARCHAR2(20), 
	DEL_FLAG CHAR(1) DEFAULT '0', 
	PRIMARY KEY (GUID)
);



--24Сʱ����Ժ������¼
DROP TABLE CLOUD_EMR_24XSNRYSWJL;
CREATE TABLE CLOUD_EMR_24XSNRYSWJL
(
	GUID varchar2(32) NOT NULL,-- ����
	BRBH varchar2(32),--���˱��
	JZXH varchar2(32),-- �������
	-- ��ʷ��
	GSZ varchar2(100),
	-- ��¼����
	JLRQ varchar2(10),
	-- ����
	ZS nvarchar2(40),
	-- ��Ժ���
	RYQK nvarchar2(2000),
	-- ���ƾ���
	ZLJG nvarchar2(2000),
	-- ����ԭ��
	SWYY nvarchar2(2000),
	-- ҽʦǩ��
	YSBH varchar2(32),
	-- ����ҽʦ
	ZZYS varchar2(32),
	CREATE_ID varchar2(32),
	CREATE_TIME varchar2(20),
	MODIFY_ID varchar2(32),
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--24Сʱ�ڳ���Ժ��¼
DROP TABLE CLOUD_EMR_24XSNCRYJL;
CREATE TABLE CLOUD_EMR_24XSNCRYJL
(
	-- ����
	GUID varchar2(32) NOT NULL,
	BRBH varchar2(32),--���˱��
	-- �������
	JZXH varchar2(32),
	-- ��ʷ��
	GSZ varchar2(100),
	-- ��¼����
	JLRQ varchar2(10),
	-- ����
	ZS nvarchar2(40),
	-- ��Ժ���
	RYQK nvarchar2(2000),
	-- ���ƾ���
	ZLJG nvarchar2(2000),
	-- ��Ժ���
	CYQK nvarchar2(2000),
	-- ��Ժҽ��
	CYZY nvarchar2(2000),
	-- MRI��
	MRIH nvarchar2(100),
	-- X��Ƭ��
	XGPH nvarchar2(100),
	-- CT��
	CTH nvarchar2(100),
	-- �����
	BLH nvarchar2(100),
	-- ����ҽʦ
	ZZYS varchar2(32),
	-- ҽʦǩ��
	YSBH varchar2(32),
	CREATE_ID varchar2(32),
	CREATE_TIME varchar2(20),
	MODIFY_ID varchar2(32),
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--��ҽ��Ժ��¼
DROP TABLE CLOUD_EMR_ZYRYJL;
CREATE TABLE CLOUD_EMR_ZYRYJL
(
	-- ����
	GUID varchar2(32) NOT NULL,
	BRBH varchar2(32),--���˱��
	-- �������
	JZXH varchar2(32),
	-- ��ʷ��
	GSZ varchar2(100),
	-- ��¼����
	JLRQ varchar2(10),
	-- ��������
	FBJQ varchar2(32),
	-- ����
	ZS nvarchar2(40),
	-- �ֲ�ʷ
	XBS nvarchar2(2000),
	-- ����ʷ
	JWS nvarchar2(2000),
	-- ����ʷ
	JZS nvarchar2(2000),
	-- ����Ѫ������ˮ�Ӵ�ʷ
	XXCYSJCS char(1),
	-- ��������
	SFSY char(1),
	-- ������(��)
	SYL_T char(3),
	-- �����Ⱦ�
	SFSJ char(1),
	-- �Ⱦ�������/�죩
	SJL_LT char(4),
	-- ����ʷ
	SFXDS char(1),
	-- ����ұ��ʷ
	YYS char(1),
	-- ����������
	WWWQZ nvarchar2(2000),
	-- ר�Ƽ��
	-- 
	ZKJC nvarchar2(2000),
	-- ����
	TW char(5),
	-- ����
	MB char(3),
	-- ����
	HX char(2),
	-- ����ѹ 
	SZY char(3),
	-- ����ѹ
	SSY char(3),
	-- �������
	FZJC nvarchar2(2000),
	-- �����
	TGJC nvarchar2(2000),
	-- ����ʷ
	HYS nvarchar2(2000),
	-- �¾�ʷ
	YJS nvarchar2(2000),
	-- CREATE_ID
	CREATE_ID varchar2(32),
	-- CREATE_TIME
	CREATE_TIME varchar2(20),
	-- MODIFY_ID
	MODIFY_ID varchar2(32),
	-- MODIFY_TIME
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--��ǰ���ۼ�¼
DROP TABLE CLOUD_EMR_SQTLJL;
CREATE TABLE CLOUD_EMR_SQTLJL
(
	-- ����
	GUID varchar2(32) NOT NULL,
	BRBH varchar2(32),--���˱��
	-- �������
	JZXH varchar2(32),
	-- ��������
	TLRQ varchar2(20),
	-- ������
	ZCR varchar2(32),
	-- ������ְ��
	ZCR_ZC varchar2(32),
	-- ����
	XM varchar2(32),
	-- ����ְ��
	XM_ZC varchar2(32),
	-- �㱨��ʷ
	HBBS nvarchar2(2000),
	-- ������Ա����
	HLRYFY clob,
	-- �������ܽᷢ��
	ZCRZJ clob,
	-- ������ǩ��
	ZRCQM varchar2(32),
	-- ��¼��ǩ��
	JLRQM varchar2(32),
	CREATE_ID varchar2(32),
	CREATE_TIME varchar2(20),
	MODIFY_ID varchar2(32),
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--��ǰ���ۼ�¼����
DROP TABLE CLOUD_EMR_SQTLJL_FY;
CREATE TABLE CLOUD_EMR_SQTLJL_FY
(
	-- ����
	GUID varchar2(32) NOT NULL,
	-- ����������
	FYZXM varchar2(32),
	-- ������ְ��
	FYZZC varchar2(32),
	-- ��������
	FYZNR clob,
	-- ����ID
	PARENT_ID varchar2(32) NOT NULL,
	CREATE_ID varchar2(32),
	CREATE_TIME varchar2(20),
	MODIFY_ID varchar2(32),
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--������Ժ��¼
DROP TABLE CLOUD_EMR_FKRYJL;
CREATE TABLE CLOUD_EMR_FKRYJL
(
	-- ����
	GUID varchar2(32) NOT NULL,
	BRBH varchar2(32),--���˱��
	-- �������
	JZXH varchar2(32),
	-- ��ʷ��
	GSZ varchar2(100),
	-- ��¼����
	JLRQ varchar2(10),
	-- ����
	ZS nvarchar2(40),
	-- �ֲ�ʷ
	XBS nvarchar2(2000),
	-- ����ʷ
	JWS nvarchar2(2000),
	-- ����Ѫ������ˮ�Ӵ�ʷ
	XXCYSJCS char(1),
	-- ��������
	SFSY char(1),
	-- ������(��)
	SYL_DAY char(3),
	-- ����ұ��ʷ
	YYS char(1),
	-- �����Ⱦ�
	SFSJ char(1),
	-- �Ⱦ�������/�죩
	SJL char(4),
	-- ����ʷ
	SFXDS char(1),
	-- ��������
	YJS_CHNL char(2),
	-- �¾�
	YJS_YJ varchar2(64),
	-- ����
	YJS_ZQ varchar2(16),
	-- ��������
	YJS_JZNL char(2),
	-- �¾���
	YJS_YJL char(1),
	-- ����ʹ��
	YJS_YWTJ char(1),
	-- ĩ���¾�
	YJS_MCYJ varchar2(16),
	-- ǰ���¾�
	YJS_QCYJ varchar2(16),
	-- �״���
	YJS_BDL char(1),
	-- ��״
	YJS_XZ char(1),
	-- ��ζ
	YJS_YW char(1),
	-- �������
	HYS_JHNL char(2),
	-- �ɷ򽡿�״��
	HYS_ZFJKZK varchar2(64),
	-- �ٻ�
	HYS_ZH char(1),
	-- �ٻ�����
	HYS_ZHNL char(3),
	-- ���������
	HYS_XSHQK varchar2(64),
	-- ���δ��ʱ��(��)
	HHWYSJ char(2),
	-- ����
	FMS_LC char(1),
	-- ������δ��ʱ��(��)
	LCHWYSJ char(2),
	-- ���²�
	ZYC char(2),
	-- ���
	ZC char(3),
	-- ������
	LC char(3),
	-- �ִ���Ů
	XCZN char(1),
	-- �쳣����
	YCRS varchar2(64),
	-- �쳣������
	YCRSJJ varchar2(64),
	-- ����
	FMS_BY char(1),
	-- ����ʷ
	JZS nvarchar2(2000),
	-- ����
	TW char(5),
	-- ����
	MB char(3),
	-- ����
	HX char(2),
	-- ����ѹ
	SSY char(3),
	-- ����ѹ 
	SZY char(3),
	-- ����
	YBQK_FY varchar2(16),
	-- Ӫ��
	YBQK_YY varchar2(16),
	-- ��־
	YBQK_SZ varchar2(16),
	-- ����
	YBQK_MR varchar2(16),
	-- ��λ
	YBQK_TW varchar2(32),
	-- ��̬
	YBQK_BT varchar2(32),
	-- �������̶�
	YBQK_JCHZCD varchar2(64),
	-- Ƥ���Ĥ
	PFNM varchar2(64),
	-- �ܰͽ�
	LBJ varchar2(64),
	-- �鷿�������
	RFFYQK char(1),
	-- �鷿�׿�
	RFZK char(1),
	-- �β�����
	F_SZ varchar2(64),
	-- �β�����
	F_CZ varchar2(64),
	-- �β�ߵ��
	F_KZ varchar2(64),
	-- �β�����
	F_TZ varchar2(64),
	-- ������
	X_TZ varchar2(64),
	-- ������
	X_SZ varchar2(64),
	-- �Ĵ���
	X_CZ varchar2(64),
	-- ��ߵ��
	X_KZ varchar2(64),
	-- ��������
	FB_CZ varchar2(64),
	-- ��������
	FB_SZ varchar2(64),
	-- ����ߵ��
	FB_KZ varchar2(64),
	-- ��������
	FB_TZ varchar2(64),
	-- ������
	SSBH char(1),
	-- �����۲�λ
	SSBHBW varchar2(32),
	-- ����ֱ��
	GMZC varchar2(64),
	-- ��׵��֫
	JZSZ varchar2(64),
	-- ��ϵͳ
	SJXT varchar2(64),
	-- ��������
	WYFY char(1),
	-- Ƥ���Ĥɫ��
	PFNMSZ char(1),
	-- ������������
	WYQT varchar2(64),
	-- ����ճĤ
	YDNM char(1),
	-- ��չ
	SZZK char(1),
	-- ������
	FMW char(1),
	-- ��������(��)
	FMWL varchar2(16),
	-- ǰ�����
	QBPC char(1),
	-- ǰ�������(��)
	QBPCL varchar2(16),
	-- ������
	HBPC char(1),
	-- ��������(��)
	HBPCL varchar2(16),
	-- ����
	GJ char(1),
	-- ����(��)
	GJD varchar2(16),
	-- ������
	GJXZ char(1),
	-- ����׸����
	ZSW char(1),
	-- ��������
	NZ char(1),
	-- ���޽Ӵ��Գ�Ѫ
	JCXCX char(1),
	-- ��ʹ
	JT char(1),
	-- ����λ��
	GTW char(1),
	-- �����С
	GTDX char(1),
	-- �ʵ�
	GTZD varchar2(32),
	-- ��״
	GTXZ char(1),
	-- ���
	GTHDX char(1),
	-- ѹʹ
	GTYT char(1),
	-- ���ʹ��ڹ�
	DRDJG char(1),
	-- �׿�
	GTZK char(1),
	-- �׿�(����)
	FJZK char(1),
	-- ��/�Ҳ�
	ZKWZ char(1),
	-- �׿��С
	ZKDX varchar2(16),
	-- ���
	FJHDX char(1),
	-- �ʵ�
	FJZD char(1),
	-- ѹʹ
	FJYT char(1),
	-- �⻬
	FJGH char(1),
	-- ���ӹ�����
	YZGJX char(1),
	-- ����B�������
	FKBCJCJG nvarchar2(200),
	-- ��������
	BLJCJG nvarchar2(200),
	-- ����ҽʦǩ��
	ZZYSQM varchar2(32),
	-- ǩ������
	QZRQ varchar2(50),
	-- CREATE_ID
	CREATE_ID varchar2(32),
	-- CREATE_TIME
	CREATE_TIME varchar2(20),
	-- MODIFY_ID
	MODIFY_ID varchar2(32),
	-- MODIFY_TIME
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) default '0',
	PRIMARY KEY (GUID)
);

--סԺ����
DROP TABLE CLOUD_EMR_ZYBL;
CREATE TABLE CLOUD_EMR_ZYBL
(
	-- ����
	GUID varchar2(32) NOT NULL,
	BRBH varchar2(32),--���˱��
	-- �������
	JZXH varchar2(32),
	-- ��ʷ��
	GSZ varchar2(100),
	-- ��¼����
	JLRQ varchar2(10),
	-- ����
	ZS nvarchar2(40),
	-- �ֲ�ʷ
	XBS nvarchar2(2000),
	-- ����ʷƽ�ؽ���״��
	JWS_PSJKZK char(4),
	-- ����ʷ���������ʹ�Ⱦ��ʷ
	JWS_CHJBHCRBS char(1),
	-- ����ʷԤ������ʷ
	JWS_YFJZS char(1),
	-- ����ʷ����ʷ
	JWS_GMS char(1),
	-- ����ʷ����Դ
	JWS_GMY nvarchar2(200),
	-- ����ʷ�ٴ�����
	JWS_LCBX nvarchar2(200),
	-- ϵͳ�ع�-�ڷ������лϵͳ
	XTHG_NFMYDXXT varchar2(16),
	-- ����ʷ�Ƿ�������ʷ
	JWS_WSS char(1),
	-- ����ʷ�Ƿ�������ʷ
	JWS_SSS char(1),
	-- ����ʷ�Ƿ�����Ѫʷ
	JWS_SXS char(1),
	-- ϵͳ�ع�-����ϵͳ-����
	XTHG_HXXT_QT varchar2(32),
	-- ϵͳ�ع�-����ϵͳ
	XTHG_HXXT varchar2(16),
	-- ϵͳ�ع�-ѭ��ϵͳ
	XTHG_XHXT varchar2(16),
	-- ϵͳ�ع�-����ϵͳ
	XTHG_XHXIT varchar2(16),
	-- ϵͳ�ع�-������ֳϵͳ
	XTHG_MNSZXT varchar2(16),
	-- ϵͳ�ع�-��Ѫϵͳ
	XTHG_ZXXT varchar2(16),
	-- ϵͳ�ع�-�������ϵͳ
	XTHG_JRGGXT varchar2(16),
	-- ϵͳ�ع�-��ϵͳ
	XTHG_SJXT varchar2(16),
	-- ����ʷ_������
	GRS_CSD varchar2(64),
	-- ����ʷ_���º��ֹ���
	GRS_CSHZGZ varchar2(32),
	-- ����ʷ-�ط���������ס���
	GRS_DFBDQJZQK nvarchar2(100),
	-- ����ʷ-ұ��ʷ
	GRS_YYS varchar2(128),
	-- ����ʷ-����
	GRS_SY char(1),
	-- ����ʷ-����(Լ_�꣩
	GRS_SY_YEAR char(3),
	-- ����ʷ-����(ƽ��_֧/�գ�
	GRS_SY_DAYNUM char(2),
	-- ����ʷ-����
	GRS_JY char(1),
	-- ����ʷ-����(Լ_�꣩
	GRS_JY_YEAR char(3),
	-- ����ʷ-�Ⱦ�
	GRS_SJ char(4),
	-- ����ʷ-�Ⱦ�(Լ_��)
	GRS_SJ_YEAR char(3),
	-- ����ʷ-�Ⱦ�(ƽ��_�˾ƾ�/��)
	GRS_SJ_DAYWEIGHT char(4),
	-- ����ʷ-�Ⱦ�(����)
	GRS_SJ_QT varchar2(32),
	-- ����ʷ���¾�ʷ�����������
	HYYJS_HYQK varchar2(16),
	-- ����ʷ���¾�ʷ(������䣩
	HYYJS_JHNL char(5),
	-- ����ʷ���¾�ʷ����ż�����
	HYYJS_POQK varchar2(16),
	-- ����ʷ���¾�ʷ��������Ů��
	HYYJS_YWZN char(1),
	-- ����ʷ���¾�ʷ�����������
	HYYJS_RSCS char(2),
	-- ����ʷ���¾�ʷ��˳����̥��
	HYYJS_SCJT char(2),
	-- ����ʷ���¾�ʷ��������̥��
	HYYJS_LCJT char(2),
	-- ����ʷ���¾�ʷ�������̥��
	HYYJS_ZCJT char(2),
	-- ����ʷ���¾�ʷ��������̥��
	HYYJS_SCJC char(2),
	-- ����ʷ���¾�ʷ���Ѳ������飩
	HYYJS_NCJBQ varchar2(256),
	-- ����ʷ���¾�ʷ����������) 
	HYYJS_CCNL char(2),
	-- ����ʷ���¾�ʷ���о��ڣ�
	HYYJS_XJQ char(2),
	-- ����ʷ���¾�ʷ���¾����ڣ�
	HYYJS_YJZQ char(2),
	-- ����ʷ���¾�ʷ��Ŀ���¾����ڣ�
	HYYJS_MCYJRQ varchar2(32),
	HYYJS_JJNL char(2),
	-- ����ʷ���¾�ʷ��������
	HYYJS_JL char(2),
	-- ����ʷ���¾�ʷ��ʹ����
	HYYJS_TJ char(1),
	-- ����ʷ���¾�ʷ�����ڣ�
	HYYJS_JQ char(3),
	JZS_FATHER char(1),
	JZS_FATHER_SY nvarchar2(100),
	JZS_MOTHER char(1),
	JZS_MOTHER_SY nvarchar2(100),
	JZS_BROTHERSANDSISTERS nvarchar2(100),
	JZS_CHILDRENANDOTHERS nvarchar2(100),
	-- ר�Ƽ��
	-- 
	ZKJC nvarchar2(2000),
	-- ʵ���Ҽ���е���
	SYSJQXJC nvarchar2(2000),
	-- ����ժҪ
	BLZY nvarchar2(2000),
	CREATE_ID varchar2(32),
	CREATE_TIME varchar2(20),
	MODIFY_ID varchar2(32),
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--סԺ���������
DROP TABLE CLOUD_EMR_ZYBLTGJC;
CREATE TABLE CLOUD_EMR_ZYBLTGJC
(
	-- ����
	GUID varchar2(32) NOT NULL,
	-- ����
	TW char(4),
	-- ����
	MB char(3),
	-- ����
	HX char(2),
	-- ����ѹ 
	SZY char(3),
	-- ����ѹ
	SSY char(3),
	-- һ�������������
	YBQK_FY char(1),
	-- һ�������Ӫ����
	YBQK_YY char(1),
	-- һ���������־��
	YBQK_SZ char(1),
	-- һ����������ݣ�
	YBQK_MR char(1),
	-- һ�����������������
	YBQK_MR_QT varchar2(32),
	-- YBQK_BQ
	YBQK_BQ char(1),
	-- һ���������λ��
	YBQK_TW char(1),
	-- һ���������λ-������
	YBQK_TW_QT varchar2(32),
	-- һ���������̬��
	YBQK_BT char(1),
	-- һ���������̬-������
	YBQK_BT_QT varchar2(32),
	-- һ���������������
	YBQK_PHQT char(1),
	-- Ƥ���Ĥ��ɫ��
	PFNM_SZ char(1),
	-- Ƥ���Ĥ��Ƥ�
	PFNM_PZ char(1),
	-- Ƥ���Ĥ��Ƥ��-���ͼ��ֲ���
	PFNM_PZ_LXJFB varchar2(64),
	-- Ƥ���Ĥ��Ƥ�³�Ѫ��
	PFNM_PXCX char(1),
	-- Ƥ���Ĥ��Ƥ�³�Ѫ-���ͼ��ֲ���
	PFNM_PXCX_LXJFB varchar2(64),
	-- Ƥ���Ĥ��ë���ֲ���
	PFNM_MFFB char(1),
	-- Ƥ���Ĥ��ë���ֲ�-��λ��
	PFNM_MFFB_BW varchar2(32),
	-- Ƥ���Ĥ���¶���ʪ�ȣ�
	PFNM_WDYSD char(1),
	-- Ƥ���Ĥ�����ԣ�
	PFNM_TX char(1),
	-- Ƥ���Ĥ��ˮ�ף�
	PFNM_SZ_ char(1),
	-- Ƥ���Ĥ��ˮ��-��λ���̶ȣ�
	PFNM_SZ_BWJCD varchar2(64),
	-- Ƥ���Ĥ�����ƣ�
	PFNM_GZ char(1),
	-- Ƥ���Ĥ��֩���룩
	PFNM_ZZZ char(1),
	-- Ƥ���Ĥ��֩����-��λ��
	PFNM_ZZZ_BW varchar2(32),
	-- Ƥ���Ĥ��֩����-��Ŀ��
	PFNM_ZZZ_SM varchar2(8),
	-- Ƥ���Ĥ��������
	PFNM_ZT varchar2(64),
	-- �ܰͽᣨȫ��ǳ���ܰͽᣩ
	LBJ_QSQBLBJ char(1),
	-- �ܰͽᣨȫ��ǳ���ܰͽ�-��λ��������
	LBJ_QSQBLBJ_BWJTZ varchar2(64),
	TB_TLDX char(1),
	TB_TLJX char(1),
	TB_TLQTYC char(1),
	TB_TLQTYC_BW varchar2(64),
	TB_Y_MMXS char(1),
	TB_Y_TL char(1),
	TB_Y_DJ char(1),
	TB_Y_YJ char(1),
	TB_Y_JM char(1),
	TB_Y_YQ char(1),
	TB_Y_YQ_ZY char(1),
	TB_Y_GMHR char(1),
	TB_Y_JM_ char(1),
	-- ͷ������-���ҽ�Ĥ��
	TB_Y_JM_ZY char(1),
	-- ͷ������-ͫ�ף�
	TB_Y_TK char(1),
	-- ͷ������-ͫ��-���С��
	TB_Y_TKL char(2),
	-- ͷ������-ͫ��-�Ҵ�С��
	TB_Y_TKR char(2),
	-- ͷ������-�Թⷴ�䣩
	TB_Y_DGFS char(1),
	-- ͷ������-�Թⷢ��-��/���۳ٶۣ�
	TB_Y_DGFS_CD char(1),
	-- ͷ������-�Թⷴ��-��/������ʧ��
	TB_Y_DGFS_XS char(1),
	-- ͷ������-������
	TB_Y_QT varchar2(64),
	-- ͷ������-������
	TB_E_EK char(1),
	-- ͷ������-�������ң�
	TB_E_QT char(1),
	-- ͷ������-����������
	TB_E_WEDFMW char(1),
	-- ͷ������-�����������-���ң�
	TB_E_WEDFMW_ZY char(1),
	-- ͷ������-�����������-���ʣ�
	TB_E_WEDFMW_XZ varchar2(32),
	-- ͷ������-��ͻѹʹ��
	TB_E_RTYT char(1),
	-- ͷ������-��ͻѹʹ-���ң�
	TB_E_RTYT_ZY char(1),
	-- ͷ������-���������ϰ���
	TB_E_TLCSZA char(1),
	-- ͷ��������
	TB_E_TLCSZA_ZY char(1),
	-- ͷ������-���Σ�
	TB_B_WX char(1),
	-- ͷ������-�����쳣��
	TB_B_WXYC varchar2(32),
	-- ͷ������-�����쳣��
	TB_B_QTYC char(1),
	-- ͷ������-����ѹʹ��
	TB_B_BDYT char(1),
	-- ͷ������-���Σ�
	TB_B_BDYTBW varchar2(32),
	-- ͷ������ǻ-�ڴ���
	TB_KQ_KC char(1),
	-- ͷ������ǻ-�Ĥ��
	TB_KQ_NM char(1),
	-- ͷ������ǻ-���ٵ��ܿ��ڣ�
	TB_KQ_SXDGKK char(1),
	-- ͷ������ǻ-���ٵ��ܿ����쳣�����
	TB_KQ_SXDGKK_YC char(1),
	-- ͷ������ǻ-�������
	TB_KQ_S char(1),
	-- ͷ������ǻ-������
	TB_KQ_CY char(1),
	-- ͷ������ǻ���У�
	TB_KQ_CL char(1),
	-- ͷ������ǻ-�����������
	TB_KQ_BTT char(1),
	-- ͷ������ǻ���������������
	TB_KQ_BTTZT char(1),
	-- ͷ������ǻ-���쳣��
	TB_KQ_SYC char(1),
	-- ͷ������ǻ-�ʲ������
	TB_KQ_Y varchar2(32),
	-- ͷ������ǻ��
	TB_KQ_SY char(1),
	-- �������ֿ��У�
	JB_DKG char(1),
	-- ��������������
	JB_JDM char(1),
	-- ������������-һ��������ң�
	JB_JDM_YCJR char(1),
	-- ��������������
	JB_JJM char(1),
	-- ���������ܣ�
	JB_QG char(1),
	-- ����������ƫ�����ң�
	JB_QG_PY char(1),
	-- �������ξ�������������
	JB_GJJMHLZ char(1),
	-- ��������״�٣�
	JB_JZX char(1),
	-- ��������Ϊ����
	JB_CWZ char(1),
	-- ��������Ϊ��-����ԣ�
	JB_CWZ_JJX char(1),
	-- �����������쳣��
	JB_QTYC char(1),
	-- �ز������������
	XB_XK char(1),
	-- �ز�������-��¡�������ң�
	XB_XK_PLHAX char(1),
	-- �ز�������-������
	XB_XK_QT varchar2(64),
	-- �ز����鷿�����
	XB_RF char(1),
	-- �ز����鷿-�쳣���ң�
	XB_RF_YCZY char(1),
	-- �ز����鷿-�쳣֢״��
	XB_RF_YCZZ char(1),
	-- �Σ����
	F_SZ char(1),
	-- �Σ�����-�����˶��쳣���ң�
	F_SZ_HXYDYCZY char(1),
	-- �Σ�����-�����˶��쳣�����
	F_SZ_HXYDYCQK char(1),
	-- �Σ�����-�߼�϶-��խ��λ��
	F_SZ_LJX_BZBW varchar2(64),
	-- �Σ����
	F_CZ char(1),
	-- �Σ�����-�����
	F_CZ_YC char(1),
	-- �Σ�����-�����ǿ-���ң�
	F_CZ_YCZQ_ZY char(1),
	-- �Σ�����-�������-���ң�
	F_CZ_YCJR_ZY char(1),
	-- �Σ�����-��ĤĦ���У�
	F_CZ_XMMCG char(1),
	-- �Σ�����-Ƥ�����У�
	F_CZ_PXNFG char(1),
	-- �Σ�ߵ�
	F_KZ char(1),
	-- �Σ������½���-�ң�
	F_KZ_JJXJX_Y varchar2(16),
	-- �Σ�ߵ��-�����½���-��
	F_KZ_JJXJX_Z varchar2(16),
	-- �Σ�ߵ��-�ƶ���-�ң�
	F_KZ_YDD_Y varchar2(8),
	-- �Σ�ߵ��-�ƶ���-��
	F_KZ_YDD_Z varchar2(8),
	-- �Σ�����-������
	F_TZ_HX char(1),
	-- �Σ�����-��������
	F_TZ_HXY char(1),
	-- �Σ����������
	F_LY char(1),
	-- �Σ�����-ˮ������
	F_LY_SPY char(1),
	-- �Σ�������λ��
	F_LY_BW varchar2(16),
	-- �Σ������ӳ���
	F_TZ_HXYC char(1),
	-- �Σ������ӳ�-��������-��ǿ���ң�
	F_TZ_HXYC_YYCD_ZQZY char(1),
	-- �Σ������ӳ�-��������-�������ң�
	F_TZ_HXYC_YYCD_ZRZY char(1),
	-- �ģ����
	X_SZ char(1),
	-- �ģ�����-�ļⲫ����
	X_SZ_XJBD char(1),
	-- �ģ�����-�ļⲫ��λ�ã�
	X_SZ_XJBDWZ char(1),
	-- �ģ�����-�ļⲫ��λ��-��λ���룩
	X_SZ_XJBDWZ_YWJL varchar2(8),
	-- �ģ�����-�ļⲫ����
	X_CZ_XJBD char(1),
	-- �ģ�����-�����
	X_CZ_ZC char(1),
	-- �ģ�����-���-��λ��
	X_CZ_ZCBW varchar2(32),
	-- �ģ�����-���-ʱ�ڣ�
	X_CZ_ZCSQ varchar2(32),
	-- �ģ�ߵ��-�߼䣩
	X_KZ_LJ char(1),
	-- �ģ�ߵ��-�߼�-��
	X_KZ_LJZ varchar2(8),
	-- �ģ�ߵ��-�߼�-�ң�
	X_KZ_LJY varchar2(8),
	-- �ģ�����-���ʴ�/�֣�
	X_TZ_XLC varchar2(8),
	-- �ģ�����-���ʣ�
	X_TZ_XL char(1),
	X_TZ_XYS1 char(1),
	X_TZ_XYS2 char(1),
	X_TZ_XYS3 char(1),
	X_TZ_XYS4 char(1),
	-- �ģ�����-����������
	X_TZ_EWXY char(1),
	-- �ģ�����-��������-�����ɣ�
	X_TZ_EWXY_BML char(1),
	-- �ģ�����-������
	X_TZ_ZY char(1),
	-- �ģ�����-�İ�Ħ������
	X_TZ_XBMCY char(1),
	-- �ģ�����-�İ�Ħ����-��λ��
	X_TZ_XBMCY_BW varchar2(16),
	-- �ģ�����-�İ�Ħ����-ʱ�ڣ�
	X_TZ_XBMCY_SQ varchar2(16),
	-- �ģ�����-��ΧѪ��-���쳣Ѫ������
	X_TZ_ZWXG_WYCXGZ char(1),
	-- �ģ�����-������穣�
	X_TZ_ZWXG_MBDC char(1),
	-- �ģ�����-�������-������
	X_TZ_ZWXG_MBDCQT varchar2(32),
	-- ����������-���Σ�
	FB_SZ_WX char(1),
	-- ����������-����-�ܸ���Χ��
	FB_SZ_WX_WFFW varchar2(8),
	-- ����������-�䶯����
	FB_SZ_RDB char(1),
	-- ����������-�䶯��-��ʽ������
	FB_SZ_RDB_FSWX char(1),
	-- ����������-�䶯���꣩
	FB_SZ_RDB_Q char(1),
	-- ����������-�����쳣��
	FB_SZ_QTYC char(1),
	-- ����������-����
	FB_CZ_RR varchar2(16),
	-- ����������-�������ţ�
	FB_CZ_FJJZBW varchar2(32),
	-- ����������-ѹʹ��
	FB_CZ_YT char(1),
	-- ����������-����ʹ��
	FB_CZ_FTT char(1),
	-- ����������-��ˮ����
	FB_CZ_ZSS char(1),
	-- ����������-Һ�������
	FB_CZ_YBZC char(1),
	-- ����������-�������飩
	FB_CZ_FBBK char(1),
	-- ����������-�������鲿λ��
	FB_CZ_FBBK_BW varchar2(16),
	-- ����������-����������
	FB_CZ_TZMS nvarchar2(100),
	-- �������Σ�
	FB_G char(1),
	-- ��������-�ɴ������£�
	FB_G_KCJLX varchar2(8),
	-- ��������-�ɴ�����ͻ�£�
	FB_G_KCJJTX varchar2(8),
	-- ��������-����������
	FB_G_TZMS nvarchar2(100),
	-- ���������ң�
	FB_DN char(1),
	-- ����������-�ɴ�����С��
	FB_DN_KCJDX varchar2(8),
	-- ����������-�Ƿ�ѹʹ��
	FB_DN_YT char(1),
	-- ������Ƣ��
	FB_P char(1),
	-- ������Ƣ-�ɴ������¾��룩
	FB_P_KCJLX varchar2(8),
	-- ������Ƣ-����������
	FB_P_TZMS nvarchar2(100),
	-- �������������
	FB_S char(1),
	-- ��������-�ɴ�����С��
	FB_S_KCJDX varchar2(8),
	-- ��������-�ɴ���Ӳ�ȣ�
	FB_S_KCJYD varchar2(32),
	-- ��������-�ɴ���ѹʹ��
	FB_S_KCJYT varchar2(32),
	-- ��������-�ɴ����ƶ��ȣ�
	FB_S_KCJYDD varchar2(64),
	-- ��������-�����ѹʹ�㣩
	FB_S_SNGYTD char(1),
	-- ��������-�����ѹʹ�㲿λ��
	FB_S_SNGYTD_BW varchar2(32),
	-- ������ߵ��-�������磩
	FB_KZ_KZYJ char(1),
	-- ������ߵ��-���ϼ�λ�����������ߣ�
	FB_KZ_KSJWYZSGZX varchar2(32),
	-- ������ߵ��-�ƶ���������
	FB_KZ_YDXZY char(1),
	-- ������ߵ��-����ߵʹ��
	FB_KZ_SQKT char(1),
	-- ����������-��������
	FB_TZ_CMY char(1),
	-- ����������-����ˮ����
	FB_TZ_QGSS char(1),
	-- ����������-Ѫ��������
	FB_TZ_XGZY char(1),
	-- ����������-Ѫ��������λ��
	FB_TZ_XGZYBW varchar2(32),
	-- ����ֱ�����
	GMZC char(1),
	-- ����ֱ���쳣
	GMZC_YC nvarchar2(100),
	-- ��ֳ�����
	SZQ char(1),
	-- ��ֳ���쳣
	SZQ_YC nvarchar2(100),
	-- ������֫��������
	JZSZ_JZ char(1),
	-- ������֫���������Σ�
	JZSZ_JZJX char(1),
	-- ������֫����ͻ��
	JZSZ_JT char(1),
	-- ������֫����ͻ��λ��
	JZSZ_JTBW varchar2(32),
	-- ������֫����ȣ�
	JZSZ_HDD char(1),
	-- ������֫����֫��
	JZSZ_SZ char(1),
	-- ������֫����֫-��״ָֺ��
	JZSZ_CZZCBWJTZ nvarchar2(100),
	-- ��ϵͳ�����ڷ��䣩
	SJXT_FBFS char(1),
	-- ��ϵͳ����������
	SJXT_JZL char(1),
	-- ��ϵͳ��������
	SJXT_JL varchar2(8),
	-- ��ϵͳ��֫��̱����
	SJXT_ZTTH char(1),
	-- ��ϵͳ�����ͷ������-��
	SJXT_HETJFS_Z char(1),
	-- ��ϵͳ�����ͷ������-�ң�
	SJXT_HETJFS_Y char(1),
	-- ��ϵͳ�����ͷ�����䣩
	SJXT_HETJFS char(1),
	-- ��ϵͳ��ϥ�췴�䣩
	SJXT_XJFS char(1),
	-- ��ϵͳ��ϥ�췴��-��
	SJXT_XJFS_Z char(1),
	-- ��ϵͳ��ϥ�췴��-��
	SJXT_XJFS_Y char(1),
	-- ��ϵͳ�����췴�䣩
	SJXT_GJFS char(1),
	-- ��ϵͳ�����췴��-��
	SJXT_GJFS_Z char(1),
	-- ��ϵͳ�����췴��-�ң�
	SJXT_GJFS_Y char(1),
	CREATE_ID varchar2(32),
	CREATE_TIME varchar2(20),
	MODIFY_ID varchar2(32),
	MODIFY_TIME varchar2(20),
	-- ����ID
	PARENT_ID varchar2(32),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--��Ժ��¼
DROP TABLE CLOUD_EMR_RYJL;
CREATE TABLE CLOUD_EMR_RYJL
(
	-- ����
	GUID varchar2(32) NOT NULL,
	BRBH varchar2(32),--���˱��
	-- �������
	JZXH varchar2(32),
	-- ��ʷ��
	GSZ varchar2(100),
	-- ��¼����
	JLRQ varchar2(10),
	-- ����
	ZS nvarchar2(40),
	-- �ֲ�ʷ
	XBS nvarchar2(2000),
	-- ����ʷ
	JWS nvarchar2(2000),
	-- ����ʷ
	GRS nvarchar2(2000),
	-- ����ʷ
	JZS nvarchar2(2000),
	-- �����
	-- 
	TGJC nvarchar2(2000),
	-- ר�Ƽ��
	-- 
	ZKJC nvarchar2(2000),
	-- ʵ���Ҽ���е���
	SYSJQXJC nvarchar2(2000),
	-- ����
	TW char(4),
	-- ����
	MB char(3),
	-- ����
	HX char(2),
	-- ����ѹ 
	SZY char(3),
	-- ����ѹ
	SSY char(3),
	CREATE_ID varchar2(32),
	CREATE_TIME varchar2(20),
	MODIFY_ID varchar2(32),
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--������Ժ��¼
DROP TABLE CLOUD_EMR_CKRYJL;
CREATE TABLE CLOUD_EMR_CKRYJL
(
	-- ����
	GUID varchar2(32) NOT NULL,
	BRBH varchar2(32),--���˱��
	-- �������
	JZXH varchar2(32),
	-- ��ʷ��
	GSZ varchar2(100),
	-- ��¼����
	JLRQ varchar2(10),
	-- ����
	ZS nvarchar2(40),
	-- �ֲ�ʷ
	XBS nvarchar2(2000),
	-- �ġ��Ρ�������
	X_F_S_JB char(1),
	-- �ġ��Ρ�������_����
	X_F_SJB_BM varchar2(64),
	-- ҩ�����ʷ
	YWGMS char(1),
	-- ҩ�����ʷ_ҩ��
	YWGMX_YM varchar2(64),
	-- ����ʷ
	SSS char(1),
	-- ����ʷ_��ʽ
	SSS_SS varchar2(64),
	-- Ԥ������ʷ
	YFJZS char(1),
	-- ��Ⱦ��ʷ
	CRBS char(1),
	-- ��ﲡʷ
	DXBS char(1),
	-- �̡��ơ�����ҩ�Ⱥ�
	YJD_MYSH char(1),
	-- �β�ʷ
	ZBS char(1),
	-- ��ˮ�Ӵ�ʷ
	YSJCS char(1),
	-- ��������
	CCNL char(6),
	-- �о�����
	XJTS char(6),
	-- �¾�����
	YJTS char(6),
	-- �¾���
	YJ_YJL char(1),
	-- ʹ��
	YJ_TJ char(1),
	-- �״���
	YJ_BDL char(1),
	-- ��״
	YJ_XZ varchar2(64),
	-- ��ζ
	YJ_YW varchar2(64),
	-- �������
	JHNL char(6),
	-- ���׻���
	JQHP char(1),
	-- �ɷ�����
	ZF_XM varchar2(32),
	-- �ɷ�����
	ZF_NL char(6),
	-- �ɷ�ְҵ
	ZF_ZY varchar2(32),
	-- �ɷ򽡿�״��
	ZF_JKZK varchar2(32),
	-- ���²�
	RC_ZYC char(6),
	-- ���
	RC_ZC char(6),
	-- ����
	RC_LC char(6),
	-- �ִ���Ů
	XC_ZN char(1),
	-- ĩ������������ʱ��
	MCSLCSJ varchar2(64),
	-- �쳣�в����
	YCYCQK nvarchar2(100),
	-- ����ʷ
	JZS nvarchar2(2000),
	-- ����
	TW char(5),
	-- ����
	MB char(3),
	-- ����
	HX char(2),
	-- ����ѹ 
	DBP char(3),
	-- ����ѹ
	SBP char(3),
	-- ���
	SG char(4),
	-- ����
	TZ char(4),
	-- ˮ��
	SZ char(1),
	-- ����
	YB_FY varchar2(16),
	-- Ӫ��
	YB_YY varchar2(16),
	-- ��־
	YB_SZ varchar2(16),
	-- ����
	YB_MR varchar2(16),
	-- ��λ
	YB_TW char(1),
	-- ��̬
	YB_BT varchar2(32),
	-- �������̶�
	JCHZCD varchar2(64),
	-- Ƥ���Ĥ
	PFNM varchar2(64),
	-- �ܰͽ�
	LBJ varchar2(64),
	-- ͷ����
	TJB varchar2(64),
	-- ����
	XB_XK varchar2(64),
	-- �鷿
	XB_RF varchar2(64),
	-- ��_����
	F_SZ varchar2(64),
	-- ��_����
	F_CZ varchar2(64),
	-- ��_ߵ��
	F_KZ varchar2(64),
	-- ��_����
	F_TZ varchar2(64),
	-- ��_����
	X_SZ varchar2(64),
	-- ��_����
	X_CZ varchar2(64),
	-- ��_ߵ��
	X_KZ varchar2(64),
	-- ��_����
	X_TZ varchar2(64),
	-- ����_����
	FB_SZ varchar2(64),
	-- ����_����
	FB_CZ varchar2(64),
	-- ����_ߵ��
	FB_KZ varchar2(64),
	-- ����_����
	FB_TZ varchar2(64),
	-- �̺�
	GM_ZH char(1),
	-- ����_��
	WY_BH char(1),
	-- ����_ˮ��
	WY_SZ char(1),
	-- ����_��������
	WY_JMQZ char(1),
	-- ������֫
	JZSZ varchar2(64),
	-- ��ϵͳ
	SJXT varchar2(64),
	-- ����
	CK_GG char(4),
	-- ��Χ
	CK_FW char(4),
	-- ����̥����С
	GJTEDX char(5),
	-- ̥��λ
	CK_TFW varchar2(32),
	-- ̥��
	CK_TX char(4),
	-- ̥��λ��
	TX_WZ varchar2(16),
	-- ǿ��
	CK_QD varchar2(16),
	-- ��¶
	CK_XL varchar2(16),
	-- λ��
	CK_WZ varchar2(16),
	-- �ν�
	CK_XJ varchar2(16),
	-- ̥Ĥ
	CK_TM varchar2(16),
	-- �����ʵ�
	GJZD char(1),
	-- ����λ��
	GJWZ char(1),
	-- ��������
	GJCD char(4),
	-- ��������
	GJKZ varchar2(32),
	-- ����
	GJ_GS varchar2(32),
	-- ��ǰ�ϼ��侶
	QQSJJJ char(4),
	-- ���ռ侶
	QJJJ char(4),
	-- �ĳ��⾶
	QCWJ char(4),
	-- ���ǽ�ڼ侶
	ZGJJJJ char(4),
	-- ��Σ���ؼ�¼
	GWYSJL char(1),
	-- ��Χ����
	JWCDK char(1),
	-- ��Χ���󿨣�Ժ��
	JWCDK_Y char(1),
	-- ʵ���Ҽ���е���
	SYSJQXJC nvarchar2(2000),
	-- ҽʦǩ��
	YSBH varchar2(32),
	-- ǩ��ʱ��
	QMSJ varchar2(50),
	-- CREATE_ID
	CREATE_ID varchar2(32),
	-- CREATE_TIME
	CREATE_TIME varchar2(20),
	-- MODIFY_ID
	MODIFY_ID varchar2(32),
	-- MODIFY_TIME
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--������¼
DROP TABLE CLOUD_EMR_SSJL;
CREATE TABLE CLOUD_EMR_SSJL
(
	-- ����
	GUID varchar2(32) NOT NULL,
	BRBH varchar2(32),--���˱��
	-- �������
	JZXH varchar2(32),
	-- ������ʼʱ��
	SSKSSJ varchar2(20),
	-- ��������ʱ��
	SSJSSJ varchar2(20),
	-- ������¼��ʿ
	SSJLHS varchar2(256),
	-- ������λ
	SSTW varchar2(20),
	-- Ƥ������
	PFXD varchar2(100),
	-- �пڲ�λ�����򡢳���
	QK_BW_FX_CD varchar2(200),
	-- �Ƿ�ı�������ʽ
	SZGBSSFS char(1),
	-- �Ƿ�ı�������ʽ����
	SZGBSSFSLY nvarchar2(2000),
	-- �Ƿ�ǩ��֪��ͬ����
	QSZQTYS char(1),
	-- ������������
	YLCLMC varchar2(384),
	-- ����������Ŀ
	YLCLSM char(6),
	-- �������Ϸ�ֹ��λ
	YLCLFZBW varchar2(100),
	-- ����걾����
	SYBBMC varchar2(384),
	-- ������ҩ
	SZYY varchar2(384),
	-- �Ƿ���Ѫ
	SFSX char(1),
	-- ��Ѫ��
	SXL char(5),
	-- ������ǩ��
	SSZQM varchar2(32),
	CREATE_ID varchar2(32),
	CREATE_TIME varchar2(20),
	MODIFY_ID varchar2(32),
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--������Ժ��¼
DROP TABLE CLOUD_EMR_EKRYJL;
CREATE TABLE CLOUD_EMR_EKRYJL
(
	-- ����
	GUID varchar2(32) NOT NULL,
	BRBH varchar2(32),--���˱��
	-- �������
	JZXH varchar2(32),
	-- ��ʷ��
	GSZ varchar2(100),
	-- ��¼����
	JLRQ varchar2(10),
	-- ����
	ZS nvarchar2(40),
	-- ����ʷ
	JWS nvarchar2(2000),
	-- �ֲ�ʷ
	XBS nvarchar2(2000),
	-- ����ʷ
	GRS nvarchar2(2000),
	-- ����ʷ
	JZS nvarchar2(2000),
	-- ʵ���Ҽ���е���
	SYSJQXJC nvarchar2(2000),
	-- ҽʦǩ��
	YSBH varchar2(32),
	-- ǩ��ʱ��
	QMSJ varchar2(50),
	-- CREATE_ID
	CREATE_ID varchar2(32),
	-- CREATE_TIME
	CREATE_TIME varchar2(20),
	-- MODIFY_ID
	MODIFY_ID varchar2(32),
	-- MODIFY_TIME
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);

--������Ժ��¼�����
DROP TABLE CLOUD_EMR_EKRYJLTGJC;
CREATE TABLE CLOUD_EMR_EKRYJLTGJC
(
	-- ����
	GUID varchar2(32) NOT NULL,
	-- ����
	TW char(5),
	-- ����
	MB char(3),
	-- ����ѹ 
	SZY char(3),
	--����ѹ
	SSY char(3),
	-- ����
	HX char(2),
	-- ����
	TZ char(4),
	-- ��λ
	YB_TW char(1),
	-- ��λ_����
	TW_QT varchar2(32),
	-- ����
	YB_FY char(1),
	-- ��־
	YB_SZ char(1),
	-- ����
	YB_JS char(1),
	-- Ӫ��
	YB_YY char(1),
	-- ȫ���ж�֢״
	QSZDZZ char(1),
	-- ����
	YB_HX char(1),
	-- ��ɫ
	YB_MS char(1),
	-- ��
	YB_C char(1),
	-- ʧˮò
	YB_SSM char(1),
	-- ƶѪ֢
	YB_PXZ char(1),
	-- ƶѪ�̶�
	PX_CD varchar2(32),
	-- Ƥ���Ĥ_ɫ��
	PFNM_SZE char(1),
	-- ����
	PN_TX char(1),
	-- �ֲ�
	PN_CC char(1),
	-- Ƥ��֬��
	PXZF char(1),
	-- ��֫ĩ������
	SJMDJL char(1),
	-- Ƥ��
	PN_PZ char(1),
	-- Ƥ��_���ͼ��ֲ�
	PZ_LXJFB varchar2(64),
	-- Ƥ�³�Ѫ
	PXCX char(1),
	-- Ƥ�³�Ѫ_���ͼ��ֲ�
	PXCX_LXJFB varchar2(64),
	-- ˮ��
	PN_SZ char(1),
	-- ˮ��_��λ
	SZ_BW varchar2(32),
	-- ˮ��_���ʼ��̶�
	SZ_XZJCD varchar2(64),
	-- ǳ���ܰͽ�
	QBLBJ varchar2(512),
	-- ͷ�沿_ͷ��
	TMB_TX char(1),
	-- ͷ�沿_ͷ��
	TMB_TF char(1),
	-- ­����
	LGRH char(1),
	-- ǰض
	TMB_QX char(1),
	-- ǰض��С_��
	QX_C char(4),
	-- ǰض��С_��
	QX_K char(4),
	-- ­��
	TMB_LF char(1),
	-- ��Ĥ
	TMB_JIM char(1),
	-- ��Ĥ��Ⱦ
	GMHR char(1),
	-- ��Ĥ��Ⱦ�̶�
	GMHR_Y char(1),
	-- ��Ĥ
	TMB_JAM char(1),
	-- ͫ��
	TMB_TK char(1),
	-- ͫ��_�ȴ�
	TK_DD char(3),
	-- ͫ��_���ȴ�_��
	TK_BDD_Z char(3),
	-- ͫ��_���ȴ�_��
	TK_BDD_Y char(3),
	-- �ԹⷴӦ
	DGFY char(1),
	-- ����
	TMB_EK char(1),
	-- ����_����
	EK_JX varchar2(32),
	-- �����
	TMB_WED char(1),
	-- ������
	TMB_FMW char(1),
	-- ��������״
	FMW_Y char(1),
	-- ������λ��
	FMW_WZ char(1),
	-- ����
	TMB_JZ char(1),
	-- ����λ��
	JZ_WZ char(1),
	-- ����
	TMB_BS char(1),
	-- ����
	TMB_YC char(1),
	-- ����_�ȳ�
	YC_MC char(3),
	-- ����
	TMB_YY char(1),
	-- ��
	TMB_S char(1),
	-- ��ϵ��
	TMB_SXD char(1),
	-- ��ǻ�Ĥ
	KQNM char(1),
	-- ��
	TMB_E char(1),
	-- ��
	TMB_Y char(1),
	-- ������
	TMB_BTT char(1),
	-- ������_�״�
	BTT_ZD char(1),
	-- ������_ŧ�Է�����λ��
	BTT_NXFMW char(1),
	-- ����
	TMB_JB char(1),
	-- ����
	TMB_QG char(1),
	-- ����_ƫ��
	QG_PY char(1),
	-- ������ŭ��
	JJMNZ char(1),
	-- ��״�����
	JZXQK char(1),
	-- ����
	XB_XK char(1),
	-- �ߴ���
	XB_LCZ char(1),
	-- ���Ϲ�
	XB_HSG char(1),
	-- ���
	XB_YC char(1),
	-- ���_��ǿ
	YC_ZQ char(1),
	-- ���_����
	YC_JR char(1),
	-- �β�ߵ��
	FBKZ char(1),
	-- �β�ߵ��_������
	FBKZ_GQY varchar2(32),
	-- �β�����
	FBTZ nvarchar2(200),
	-- ��ǰ��¡��
	XQQLQ char(1),
	-- �ļⲫ��λ��
	XJBDWZ varchar2(32),
	-- ���
	XB_ZC char(1),
	-- �Ľ��С
	XJDX char(1),
	-- �Ľ�����
	XJZD char(1),
	-- �Ľ����󳤶�
	XJZD_CD char(3),
	-- ����Ƶ��
	XLPL char(3),
	-- ����״̬
	XLZT char(1),
	-- ���ʲ���
	XLBZ varchar2(32),
	-- ����
	XB_XY char(1),
	-- ����
	XB_ZY char(1),
	-- ������λ
	ZY_BW varchar2(32),
	-- ��������
	ZY_XZ varchar2(32),
	-- ����ǿ��
	ZY_QD varchar2(32),
	-- ����_����
	FB_WX char(1),
	-- ����_����
	FB_CZ char(1),
	-- ����_ѹʹ
	FB_YT char(1),
	-- ѹʹ��λ
	YTBW varchar2(32),
	-- ����ʹ
	FB_FTT char(1),
	-- �ƶ�������
	FB_YDXZY char(1),
	-- ����
	FB_BK char(1),
	-- ���鲿λ
	BK_BW varchar2(32),
	-- �����С
	BK_DX varchar2(32),
	-- ���鴥ʹ
	BK_CT varchar2(32),
	-- ����������
	GZYLX char(4),
	-- ���ལ��
	GZJX char(4),
	-- �����ʵ�
	GZZD char(1),
	-- Ƣ������
	PZLX char(4),
	-- Ƣ���ʵ�
	PZZD char(1),
	-- ߵ��_����
	KZ_GY char(1),
	-- ߵ��_�ƶ�������
	KZ_YDXZY char(1),
	-- ����_������
	TZ_CMY char(1),
	-- ���ż�����ֳ��
	GMJWSZQ varchar2(512),
	-- ��������֫
	JZJSZ char(1),
	-- ��������֫����
	JZJSZ_JX varchar2(32),
	-- �����˷ʴ�
	GHDFD char(1),
	-- ��״ָ��ֺ��
	JZJSZ_CZZ char(1),
	-- �ؽں���
	GJHZ char(1),
	-- �ؽں��ײ�λ
	GJHZ_BW varchar2(32),
	-- ѹʹ
	JZJSZ_YT char(1),
	-- ѹʹ��λ
	JZJSZ_YTBW varchar2(32),
	-- ǿֱ
	JZJSZ_QZ char(1),
	-- ǿֱ��λ
	JZJSZ_QZBW varchar2(32),
	-- ˮ��
	JSJSZ_SZ char(1),
	-- ˮ�ײ�λ
	JSJSZ_SZBW varchar2(32),
	-- ����ή��
	JSJSZ_JRWS char(1),
	-- ����ή����λ
	JSJSZ_JRWSBW varchar2(32),
	-- ���
	JSJSZ_HDD char(1),
	-- �������
	JSJSZ_HDDSX varchar2(32),
	-- �񾭷���kernig��
	SJFS_K char(1),
	-- Babinski��
	SJFS_B char(1),
	-- Brudzinski��
	SJFS_BR char(1),
	-- ϥ����
	SJFS_XFS char(1),
	-- ������
	SJFS_JZL char(1),
	-- ����ID
	PARENT_ID varchar2(32),
	CREATE_ID varchar2(32),
	CREATE_TIME varchar2(20),
	MODIFY_ID varchar2(32),
	MODIFY_TIME varchar2(20),
	DEL_FLAG char(1) DEFAULT '0',
	PRIMARY KEY (GUID)
);
