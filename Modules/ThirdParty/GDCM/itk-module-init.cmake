option(ITK_USE_SYSTEM_GDCM-ABI "Use an outside build of GDCM." ON)
mark_as_advanced(ITK_USE_SYSTEM_GDCM-ABI)

if(ITK_USE_SYSTEM_GDCM-ABI)
  find_package(GDCM-ABI REQUIRED CONFIG)
  # Avoid UseGDCM.cmake calling include(${VTK_USE_FILE}), which include's
  # VTK's include paths before ITK and causes a MetaIO conflict.
  set(GDCM_USE_VTK FALSE)
  include(${GDCM_USE_FILE})
endif()
