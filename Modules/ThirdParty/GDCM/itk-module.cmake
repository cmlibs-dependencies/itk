set(DOCUMENTATION "This module contains the third party <a
href=\"http://sourceforge.net/projects/gdcm/\">GDCM</a> library.
Grassroots DiCoM is a C++ library for DICOM medical files.")

if(ITK_USE_SYSTEM_GDCM-ABI)
  itk_module(ITKGDCM-ABI
    DESCRIPTION
      "${DOCUMENTATION}"
    EXCLUDE_FROM_DEFAULT
  )
else()
  itk_module(ITKGDCM-ABI
    DEPENDS
      ITKZLIB
      ITKExpat
    DESCRIPTION
      "${DOCUMENTATION}"
  )
endif()
