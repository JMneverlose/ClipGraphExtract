set LIB_PATH __LIB_PATH__
set LEF_PATH __LEF_PATH__
set DEF_PATH __DEF_PATH__
set SPEF_PATH __SPEF_PATH__
set RPT_PATH __RPT_PATH__
set SDC_PATH __SDC_PATH__
set NUM_ROWS __NUM_ROWS__
set GRAPH_MODEL __GRAPH__MODEL__
set EDGE_WEIGHT_MODEL __EDGE_WEIGHT_MODEL__
set RMAX_LYR __NUM_LYRS__
set IMG_HOME __IMG_HOME__
set LABEL_HOME __LABEL_HOME__
set GRAPH_HOME __GRAPH_HOME__
set FEATURE_HOME __FEATURE_HOME__

#################
# OpenDB update #
#################
read_lef $LEF_PATH
read_liberty $LIB_PATH
read_def $DEF_PATH

read_sdc $SDC_PATH


read_spef $SPEF_PATH

# 


# report_checks
# initialize gcell_grid and inst_graph
graph_extract_init \
    -num_rows $NUM_ROWS \
    -max_route_layer $RMAX_LYR \
    -graph_model $GRAPH_MODEL \
    -edge_weight_model $EDGE_WEIGHT_MODEL
graph_extract
save_features -save_dir $FEATURE_HOME
save_graphs -save_dir $GRAPH_HOME

exit

