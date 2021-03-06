# Makefile generated by XPJ for linux-aarch64
-include Makefile.custom
ProjectName = Bloom
Bloom_cppfiles   += ./../../es2-aurora/Bloom/Bloom.cpp

Bloom_cpp_debug_dep    = $(addprefix $(DEPSDIR)/Bloom/debug/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(Bloom_cppfiles)))))
Bloom_cc_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.debug.P, $(Bloom_ccfiles)))))
Bloom_c_debug_dep      = $(addprefix $(DEPSDIR)/Bloom/debug/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(Bloom_cfiles)))))
Bloom_debug_dep      = $(Bloom_cpp_debug_dep) $(Bloom_cc_debug_dep) $(Bloom_c_debug_dep)
-include $(Bloom_debug_dep)
Bloom_cpp_release_dep    = $(addprefix $(DEPSDIR)/Bloom/release/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(Bloom_cppfiles)))))
Bloom_cc_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.release.P, $(Bloom_ccfiles)))))
Bloom_c_release_dep      = $(addprefix $(DEPSDIR)/Bloom/release/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(Bloom_cfiles)))))
Bloom_release_dep      = $(Bloom_cpp_release_dep) $(Bloom_cc_release_dep) $(Bloom_c_release_dep)
-include $(Bloom_release_dep)
Bloom_debug_hpaths    := 
Bloom_debug_hpaths    += ./../../es2-aurora/Bloom
Bloom_debug_hpaths    += ./../../../extensions/include
Bloom_debug_hpaths    += ./../../../extensions/include/NsFoundation
Bloom_debug_hpaths    += ./../../../extensions/include/NvFoundation
Bloom_debug_hpaths    += ./../../../extensions/externals/include
Bloom_debug_hpaths    += ./../../../extensions/externals/include/GLFW
Bloom_debug_lpaths    := 
Bloom_debug_lpaths    += ./../../../extensions/lib/linux-aarch64
Bloom_debug_lpaths    += ./../../../extensions/externals/lib/linux-aarch64
Bloom_debug_defines   := $(Bloom_custom_defines)
Bloom_debug_defines   += LINUX=1
Bloom_debug_defines   += NV_LINUX
Bloom_debug_defines   += GLEW_NO_GLU=1
Bloom_debug_defines   += GW_APP_NAME=\"Bloom\"
Bloom_debug_defines   += _DEBUG
Bloom_debug_libraries := 
Bloom_debug_libraries += NsFoundationD
Bloom_debug_libraries += NvAppBaseD
Bloom_debug_libraries += NvAssetLoaderD
Bloom_debug_libraries += NvModelD
Bloom_debug_libraries += NvGLUtilsD
Bloom_debug_libraries += NvGamepadD
Bloom_debug_libraries += NvImageD
Bloom_debug_libraries += NvUID
Bloom_debug_libraries += HalfD
Bloom_debug_libraries += glfw3
Bloom_debug_libraries += NvAppBaseD
Bloom_debug_libraries += NvUID
Bloom_debug_libraries += NvAssetLoaderD
Bloom_debug_libraries += NvModelD
Bloom_debug_libraries += NvGLUtilsD
Bloom_debug_libraries += NvGamepadD
Bloom_debug_libraries += NvImageD
Bloom_debug_libraries += HalfD
Bloom_debug_libraries += GLEW
Bloom_debug_libraries += GL
Bloom_debug_libraries += X11
Bloom_debug_libraries += Xrandr
Bloom_debug_libraries += Xxf86vm
Bloom_debug_libraries += Xi
Bloom_debug_libraries += Xinerama
Bloom_debug_libraries += Xcursor
Bloom_debug_libraries += dl
Bloom_debug_common_cflags	:= $(Bloom_custom_cflags)
Bloom_debug_common_cflags    += -MMD
Bloom_debug_common_cflags    += $(addprefix -D, $(Bloom_debug_defines))
Bloom_debug_common_cflags    += $(addprefix -I, $(Bloom_debug_hpaths))
Bloom_debug_common_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -pthread
Bloom_debug_common_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
Bloom_debug_cflags	:= $(Bloom_debug_common_cflags)
Bloom_debug_cppflags	:= $(Bloom_debug_common_cflags)
Bloom_debug_cppflags  += -Wno-reorder -std=c++11
Bloom_debug_cppflags  += -Wno-reorder
Bloom_debug_lflags    := $(Bloom_custom_lflags)
Bloom_debug_lflags    += $(addprefix -L, $(Bloom_debug_lpaths))
Bloom_debug_lflags    += -Wl,--start-group $(addprefix -l, $(Bloom_debug_libraries)) -Wl,--end-group
Bloom_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs -pthread
Bloom_debug_objsdir  = $(OBJS_DIR)/Bloom_debug
Bloom_debug_cpp_o    = $(addprefix $(Bloom_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(Bloom_cppfiles)))))
Bloom_debug_cc_o    = $(addprefix $(Bloom_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(Bloom_ccfiles)))))
Bloom_debug_c_o      = $(addprefix $(Bloom_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(Bloom_cfiles)))))
Bloom_debug_obj      =  $(Bloom_debug_cpp_o) $(Bloom_debug_cc_o) $(Bloom_debug_c_o) 
Bloom_debug_bin      := ./../../bin/linux-aarch64/BloomD

clean_Bloom_debug: 
	@$(ECHO) clean Bloom debug
	@$(RMDIR) $(Bloom_debug_objsdir)
	@$(RMDIR) $(Bloom_debug_bin)
	@$(RMDIR) $(DEPSDIR)/Bloom/debug

build_Bloom_debug: postbuild_Bloom_debug
postbuild_Bloom_debug: mainbuild_Bloom_debug
mainbuild_Bloom_debug: prebuild_Bloom_debug $(Bloom_debug_bin)
prebuild_Bloom_debug:

$(Bloom_debug_bin): $(Bloom_debug_obj) build_NsFoundation_debug build_NvAppBase_debug build_NvAssetLoader_debug build_NvModel_debug build_NvGLUtils_debug build_NvGamepad_debug build_NvImage_debug build_NvUI_debug build_Half_debug 
	mkdir -p `dirname ./../../bin/linux-aarch64/BloomD`
	$(CCLD) $(filter %.o, $(Bloom_debug_obj)) $(Bloom_debug_lflags) -o $(Bloom_debug_bin) 
	$(ECHO) building $@ complete!

Bloom_debug_DEPDIR = $(dir $(@))/$(*F)
$(Bloom_debug_cpp_o): $(Bloom_debug_objsdir)/%.o:
	$(ECHO) Bloom: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Bloom_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Bloom/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_cppfiles))))))
	cp $(Bloom_debug_DEPDIR).d $(addprefix $(DEPSDIR)/Bloom/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Bloom_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/Bloom/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_cppfiles))))).P; \
	  rm -f $(Bloom_debug_DEPDIR).d

$(Bloom_debug_cc_o): $(Bloom_debug_objsdir)/%.o:
	$(ECHO) Bloom: compiling debug $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Bloom_debug_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_ccfiles))))))
	cp $(Bloom_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_ccfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Bloom_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_ccfiles))))).debug.P; \
	  rm -f $(Bloom_debug_DEPDIR).d

$(Bloom_debug_c_o): $(Bloom_debug_objsdir)/%.o:
	$(ECHO) Bloom: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(Bloom_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Bloom/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_cfiles))))))
	cp $(Bloom_debug_DEPDIR).d $(addprefix $(DEPSDIR)/Bloom/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Bloom_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/Bloom/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Bloom_debug_objsdir),, $@))), $(Bloom_cfiles))))).P; \
	  rm -f $(Bloom_debug_DEPDIR).d

Bloom_release_hpaths    := 
Bloom_release_hpaths    += ./../../es2-aurora/Bloom
Bloom_release_hpaths    += ./../../../extensions/include
Bloom_release_hpaths    += ./../../../extensions/include/NsFoundation
Bloom_release_hpaths    += ./../../../extensions/include/NvFoundation
Bloom_release_hpaths    += ./../../../extensions/externals/include
Bloom_release_hpaths    += ./../../../extensions/externals/include/GLFW
Bloom_release_lpaths    := 
Bloom_release_lpaths    += ./../../../extensions/lib/linux-aarch64
Bloom_release_lpaths    += ./../../../extensions/externals/lib/linux-aarch64
Bloom_release_defines   := $(Bloom_custom_defines)
Bloom_release_defines   += LINUX=1
Bloom_release_defines   += NV_LINUX
Bloom_release_defines   += GLEW_NO_GLU=1
Bloom_release_defines   += GW_APP_NAME=\"Bloom\"
Bloom_release_defines   += NDEBUG
Bloom_release_libraries := 
Bloom_release_libraries += NsFoundation
Bloom_release_libraries += NvAppBase
Bloom_release_libraries += NvAssetLoader
Bloom_release_libraries += NvModel
Bloom_release_libraries += NvGLUtils
Bloom_release_libraries += NvGamepad
Bloom_release_libraries += NvImage
Bloom_release_libraries += NvUI
Bloom_release_libraries += Half
Bloom_release_libraries += glfw3
Bloom_release_libraries += NvAppBase
Bloom_release_libraries += NvUI
Bloom_release_libraries += NvAssetLoader
Bloom_release_libraries += NvModel
Bloom_release_libraries += NvGLUtils
Bloom_release_libraries += NvGamepad
Bloom_release_libraries += NvImage
Bloom_release_libraries += Half
Bloom_release_libraries += GLEW
Bloom_release_libraries += GL
Bloom_release_libraries += X11
Bloom_release_libraries += Xrandr
Bloom_release_libraries += Xxf86vm
Bloom_release_libraries += Xi
Bloom_release_libraries += Xinerama
Bloom_release_libraries += Xcursor
Bloom_release_libraries += dl
Bloom_release_common_cflags	:= $(Bloom_custom_cflags)
Bloom_release_common_cflags    += -MMD
Bloom_release_common_cflags    += $(addprefix -D, $(Bloom_release_defines))
Bloom_release_common_cflags    += $(addprefix -I, $(Bloom_release_hpaths))
Bloom_release_common_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -pthread
Bloom_release_common_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
Bloom_release_cflags	:= $(Bloom_release_common_cflags)
Bloom_release_cppflags	:= $(Bloom_release_common_cflags)
Bloom_release_cppflags  += -Wno-reorder -std=c++11
Bloom_release_cppflags  += -Wno-reorder
Bloom_release_lflags    := $(Bloom_custom_lflags)
Bloom_release_lflags    += $(addprefix -L, $(Bloom_release_lpaths))
Bloom_release_lflags    += -Wl,--start-group $(addprefix -l, $(Bloom_release_libraries)) -Wl,--end-group
Bloom_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs -pthread
Bloom_release_objsdir  = $(OBJS_DIR)/Bloom_release
Bloom_release_cpp_o    = $(addprefix $(Bloom_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(Bloom_cppfiles)))))
Bloom_release_cc_o    = $(addprefix $(Bloom_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(Bloom_ccfiles)))))
Bloom_release_c_o      = $(addprefix $(Bloom_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(Bloom_cfiles)))))
Bloom_release_obj      =  $(Bloom_release_cpp_o) $(Bloom_release_cc_o) $(Bloom_release_c_o) 
Bloom_release_bin      := ./../../bin/linux-aarch64/Bloom

clean_Bloom_release: 
	@$(ECHO) clean Bloom release
	@$(RMDIR) $(Bloom_release_objsdir)
	@$(RMDIR) $(Bloom_release_bin)
	@$(RMDIR) $(DEPSDIR)/Bloom/release

build_Bloom_release: postbuild_Bloom_release
postbuild_Bloom_release: mainbuild_Bloom_release
mainbuild_Bloom_release: prebuild_Bloom_release $(Bloom_release_bin)
prebuild_Bloom_release:

$(Bloom_release_bin): $(Bloom_release_obj) build_NsFoundation_release build_NvAppBase_release build_NvAssetLoader_release build_NvModel_release build_NvGLUtils_release build_NvGamepad_release build_NvImage_release build_NvUI_release build_Half_release 
	mkdir -p `dirname ./../../bin/linux-aarch64/Bloom`
	$(CCLD) $(filter %.o, $(Bloom_release_obj)) $(Bloom_release_lflags) -o $(Bloom_release_bin) 
	$(ECHO) building $@ complete!

Bloom_release_DEPDIR = $(dir $(@))/$(*F)
$(Bloom_release_cpp_o): $(Bloom_release_objsdir)/%.o:
	$(ECHO) Bloom: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Bloom_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Bloom/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_cppfiles))))))
	cp $(Bloom_release_DEPDIR).d $(addprefix $(DEPSDIR)/Bloom/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Bloom_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/Bloom/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_cppfiles))))).P; \
	  rm -f $(Bloom_release_DEPDIR).d

$(Bloom_release_cc_o): $(Bloom_release_objsdir)/%.o:
	$(ECHO) Bloom: compiling release $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Bloom_release_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_ccfiles))))))
	cp $(Bloom_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_ccfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Bloom_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_ccfiles))))).release.P; \
	  rm -f $(Bloom_release_DEPDIR).d

$(Bloom_release_c_o): $(Bloom_release_objsdir)/%.o:
	$(ECHO) Bloom: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(Bloom_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Bloom/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_cfiles))))))
	cp $(Bloom_release_DEPDIR).d $(addprefix $(DEPSDIR)/Bloom/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Bloom_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/Bloom/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Bloom_release_objsdir),, $@))), $(Bloom_cfiles))))).P; \
	  rm -f $(Bloom_release_DEPDIR).d

clean_Bloom:  clean_Bloom_debug clean_Bloom_release
	rm -rf $(DEPSDIR)

export VERBOSE
ifndef VERBOSE
.SILENT:
endif
