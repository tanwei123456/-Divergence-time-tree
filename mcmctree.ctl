* infile
seqfile = Single_gene_seq.trim.phy
treefile = sample.gene.time.nwk

* outfile
outfile = samples.tmp.info
mcmcfile = mcmctree.txt

seqtype = 2     *数据类型；0，表示核酸数据；1，表示密码子比对数据；2，表示氨基酸数据。

ndata = 1       *设置输入的多序列比对的数据个数

usedata = 2         *设置是否利用多序列比对的数据：0，表示不使用多序列比对数据，则不会进行likelihood计算，虽然能得到mcmc树且计算速度飞快，但是其分歧时间结果是有问题的；
                        *1，表示使用多序列比对数据进行likelihood计算，正常进行MCMC，是一般使用的参数; 2，进行正常的approximation likelihood分析，此时不需要读取多序列比对数据，直接读取当前目录中的in.BV文件。该文件是使用usedata = 3参数生成的out.BV文件重命名而来的。
clock = 2         *设置分子钟方法：
                * 1，global clock方法，表示所有分支进化速率一致； 2，independent rates方法，各分支的进化速率独立且进化速率的对数log(r)符合正态分布;  3，correlated rates方法，和方法2类似，但是log(r)的方差和时间t相关。

RootAge = '<2.03'   *设置root节点的分歧时间，一般设置一个最大值。

model = 0         *设置碱基替换模型：0，JC69；1，K80；2，F81；3，F84；4，HKY85。

noisy = 3

cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

alpha = 0.5       *核酸序列中不同位点，其进化速率不一致，其变异速率服从GAMMA分布。一般设置GAMMA分布的alpha值为0.5。

ncatG = 5         *设置离散型GAMMA分布的categories值。

kappa_gamma = 6 2       *设置kappa（转换/颠换比率）的GAMMA分布参数。

alpha_gamma = 1 1       *设置GAMMA形状参数alpha的GAMMA分布参数.

rgene_gamma = 2 20 1    *设置序列中所所有位点平均[碱基/密码子/氨基酸]替换率的Dirichlet-GAMMA分布参数：alpha=2、beta=20、初始平均替换率为每100million年（取决于输入有根树文件中的时间单位）1个替换。若时间单位由100Myr变换为1Myr，则要设置成"2 2000 1"。

sigma2_gamma = 1 10 1    *设置所有位点进化速率取对数后方差（sigma的平方）的Dirichlet-GAMMA分布参数：alpha=1、beta=10、初始方差值为1。

print = 1         *设置打印mcmc的取样信息：

burnin = 20000      *将前20000次迭代burnin后，再进行取样（即打印出该次迭代计算的结果信息，各内部节点分歧时间、平均进化速率、sigma2值和各分支进化速率等）。

sampfreq = 2        *每10次迭代则取样一次。

nsample = 100000     *当取样次数达到该次数时，则取样结束（程序也将运行结束）。

finetune = 1: .1 .1 .1 .1 .1 .1    *冒号前的值设置是否自动进行finetune，一般设置成1，然后程序自动进行优化分析；

