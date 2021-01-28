SCRIPT_DIR=$(shell pwd)
$(info $(SCRIPT_DIR))
SRC_DIR=$(SCRIPT_DIR)/src
#TGT_DIR=$(SCRIPT_DIR)/tgt
# create the target directory
target=main.exe
all:$(target)


# compile the source files
# -fwrapv   integers should wrap around like normal
# -Werror   elevate warnings to errors

$(target):
	#mkdir -p $(TGT_DIR)
	#clang  -o $@  -fwrapv   -Werror  -lm   $(SRC_DIR)/main.c $(SRC_DIR)/mem.c  $(SRC_DIR)/snd.c  $(SRC_DIR)/wav.c   $(SRC_DIR)/biquad.c   $(SRC_DIR)/compressor.c $(SRC_DIR)/reverb.c
	gcc  -o $@  -Werror  -lm   $(SRC_DIR)/main.c $(SRC_DIR)/mem.c  $(SRC_DIR)/snd.c  $(SRC_DIR)/wav.c   $(SRC_DIR)/biquad.c   $(SRC_DIR)/compressor.c $(SRC_DIR)/reverb.c
clean:
	rm -rf src/*.o *.exe