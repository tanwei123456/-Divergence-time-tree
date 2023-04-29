* infile
seqfile = Single_gene_seq.trim.phy
treefile = sample.gene.nwk

* outfile
outfile = samples.tmp.info
mcmcfile = mcmctree.txt

seqtype = 2     *�������ͣ�0����ʾ�������ݣ�1����ʾ�����ӱȶ����ݣ�2����ʾ���������ݡ�

ndata = 1       *��������Ķ����бȶԵ����ݸ���

usedata = 2         *�����Ƿ����ö����бȶԵ����ݣ�0����ʾ��ʹ�ö����бȶ����ݣ��򲻻����likelihood���㣬��Ȼ�ܵõ�mcmc���Ҽ����ٶȷɿ죬���������ʱ������������ģ�
                        *1����ʾʹ�ö����бȶ����ݽ���likelihood���㣬��������MCMC����һ��ʹ�õĲ���; 2������������approximation likelihood��������ʱ����Ҫ��ȡ�����бȶ����ݣ�ֱ�Ӷ�ȡ��ǰĿ¼�е�in.BV�ļ������ļ���ʹ��usedata = 3�������ɵ�out.BV�ļ������������ġ�
clock = 2         *���÷����ӷ�����
                * 1��global clock��������ʾ���з�֧��������һ�£� 2��independent rates����������֧�Ľ������ʶ����ҽ������ʵĶ���log(r)������̬�ֲ�;  3��correlated rates�������ͷ���2���ƣ�����log(r)�ķ����ʱ��t��ء�

RootAge = '<2.03'   *����root�ڵ�ķ���ʱ�䣬һ������һ�����ֵ��

model = 0         *���ü���滻ģ�ͣ�0��JC69��1��K80��2��F81��3��F84��4��HKY85��

noisy = 3

cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

alpha = 0.5       *���������в�ͬλ�㣬��������ʲ�һ�£���������ʷ���GAMMA�ֲ���һ������GAMMA�ֲ���alphaֵΪ0.5��

ncatG = 5         *������ɢ��GAMMA�ֲ���categoriesֵ��

kappa_gamma = 6 2       *����kappa��ת��/�߻����ʣ���GAMMA�ֲ�������

alpha_gamma = 1 1       *����GAMMA��״����alpha��GAMMA�ֲ�����.

rgene_gamma = 2 20 1    *����������������λ��ƽ��[���/������/������]�滻�ʵ�Dirichlet-GAMMA�ֲ�������alpha=2��beta=20����ʼƽ���滻��Ϊÿ100million�꣨ȡ���������и����ļ��е�ʱ�䵥λ��1���滻����ʱ�䵥λ��100Myr�任Ϊ1Myr����Ҫ���ó�"2 2000 1"��

sigma2_gamma = 1 10 1    *��������λ���������ȡ�����󷽲sigma��ƽ������Dirichlet-GAMMA�ֲ�������alpha=1��beta=10����ʼ����ֵΪ1��

print = 1         *���ô�ӡmcmc��ȡ����Ϣ��

burnin = 20000      *��ǰ20000�ε���burnin���ٽ���ȡ��������ӡ���ôε�������Ľ����Ϣ�����ڲ��ڵ����ʱ�䡢ƽ���������ʡ�sigma2ֵ�͸���֧�������ʵȣ���

sampfreq = 2        *ÿ10�ε�����ȡ��һ�Ρ�

nsample = 100000     *��ȡ�������ﵽ�ô���ʱ����ȡ������������Ҳ�����н�������

finetune = 1: .1 .1 .1 .1 .1 .1    *ð��ǰ��ֵ�����Ƿ��Զ�����finetune��һ�����ó�1��Ȼ������Զ������Ż�������

