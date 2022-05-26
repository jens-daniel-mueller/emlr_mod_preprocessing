# set paths to test files 1-4

test_file_1 <- "/nfs/kryo/work/loher/CESM_output/RECCAP2/submit_Nov2021/area_CESM-ETHZ_1_gr_v20211122.nc"
test_file_2 <- "/nfs/kryo/work/updata/reccap2/RECCAP2_region_masks_all_v20210412.nc"
test_file_3 <- "/nfs/kryo/work/updata/glodapv2.2016b/DIC_landfill.nc"
test_file_4 <- "/nfs/kryo/work/updata/river_runoff/Dai2009_river_discharge_monthly_clim.nc"

# the following commands applied to test files 3-4 should work
# the expected output is a text output to the console describing some file properties

stars::read_ncdf(test_file_3)
stars::read_ncdf(test_file_4)

tidync::tidync(test_file_3)
tidync::tidync(test_file_4)

ncdf4::nc_open(test_file_3)
ncdf4::nc_open(test_file_4)


# all of the following commands applied to test files 1-2 caused Jens' system to crash

stars::read_ncdf(test_file_1)
stars::read_ncdf(test_file_2)

tidync::tidync(test_file_1)
tidync::tidync(test_file_2)

ncdf4::nc_open(test_file_1)
ncdf4::nc_open(test_file_2)
