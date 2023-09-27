# 本稿の目的  
本稿は、時空間相関を考慮したGLM/GLMMをRで実装する方法を解説する。 本文は[こちら](https://tsubasayamaguchi-jinrui.github.io/Spatial-temporal_analysis/)。   

生態学のデータでは、データに非独立性が存在することが多くある(第2章)。多くの統計分析はデータが互いに独立であることを仮定しているので、こうした非独立性を考慮せずにを行ってしまうと誤った結論を導いてしまうことになりかねない。本稿では、特に時間的・空間的な相関があることでデータに非独立性がある場合に、どのようにそれに対処するべきかを解説する。本稿では、特にGLMやGLMM(Zuur et al., 2013)による分析を扱う。  

本稿は主に Alain Zuurによる"Zuur, A. F. (2017). Beginner’s Guide to Spatial, Temporal and Spatial-Temporal Ecological Data Analysis with R-Inla: Using Glm and Glmm Volume I"を基に執筆している。本書はなるべく数学的な説明を省きつつ、実際の生態学のデータを用いて時空間を考慮したGLM/GLMMについて間接している本である。  

その他には、以下の本も参考にした。   

- Mixed effects models and extensions in ecology with R (Zuur, 2009)    
- Rで始める地理空間データの統計解析入門 (村上, 2022)    
- Rとstanではじめるベイズ統計モデリングによるデータ分析入門 (馬場, 2019)     
- 時系列分析と状態空間モデルの基礎 : RとStanで学ぶ理論と実装 (馬場, 2018)   

**References**  
Zuur AF (2017) Beginner’s guide to spatial, temporal and Spatial-Temporal ecological data analysis with R-Inla: Using glm and glmm volume I. Hightland Statistics Ltd.  
Zuur AF (2009) Mixed effects models and extensions in ecology with R. Springer, New York, NY  
Zuur AF, Hilbe JM, Leno EN (2013) A beginner’s guide to GLM and GLMM with r: A frequentist and bayesian perspective for ecologists. Highland Statistics  
村上大輔 (2022) Rではじめる地理空間データの統計解析入門. 講談社  
馬場真哉 (2019) R と stan ではじめるベイズ統計モデリングによるデータ分析入門. 講談社  
馬場真哉 (2018) 時系列分析と状態空間モデルの基礎 : RとStanで学ぶ理論と実装. プレアデス出版   

