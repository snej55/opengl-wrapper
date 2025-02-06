# 0 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/src/app.cpp"
# 1 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/cmake-build-debug//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/src/app.cpp"




# 1 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/src/app.h" 1







# 1 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/glad/glad.h" 1
# 47 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/glad/glad.h"
extern "C" {


struct gladGLversionStruct {
    int major;
    int minor;
};

typedef void* (* GLADloadproc)(const char *name);
# 83 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/glad/glad.h"
extern struct gladGLversionStruct GLVersion;

extern int gladLoadGL(void);

extern int gladLoadGLLoader(GLADloadproc);

# 1 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/KHR/khrplatform.h" 1
# 149 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/KHR/khrplatform.h"
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 415 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 416 "/usr/include/features.h" 2 3 4
# 524 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 730 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 731 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 732 "/usr/include/sys/cdefs.h" 2 3 4
# 525 "/usr/include/features.h" 2 3 4
# 548 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 549 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 29 "/usr/include/bits/types.h" 2 3 4



# 31 "/usr/include/bits/types.h" 3 4
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 142 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/time64.h" 1 3 4
# 143 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4



# 1 "/usr/include/bits/stdint-least.h" 1 3 4
# 25 "/usr/include/bits/stdint-least.h" 3 4
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
# 42 "/usr/include/stdint.h" 2 3 4





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 60 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 76 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 90 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 10 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stdint.h" 2 3 4
# 150 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/KHR/khrplatform.h" 2

# 150 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/KHR/khrplatform.h"
typedef int32_t khronos_int32_t;
typedef uint32_t khronos_uint32_t;
typedef int64_t khronos_int64_t;
typedef uint64_t khronos_uint64_t;
# 242 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/KHR/khrplatform.h"
typedef signed char khronos_int8_t;
typedef unsigned char khronos_uint8_t;
typedef signed short int khronos_int16_t;
typedef unsigned short int khronos_uint16_t;
# 259 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/KHR/khrplatform.h"
typedef signed long int khronos_intptr_t;
typedef unsigned long int khronos_uintptr_t;






typedef signed long int khronos_ssize_t;
typedef unsigned long int khronos_usize_t;






typedef float khronos_float_t;
# 288 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/KHR/khrplatform.h"
typedef khronos_uint64_t khronos_utime_nanoseconds_t;
typedef khronos_int64_t khronos_stime_nanoseconds_t;
# 305 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/KHR/khrplatform.h"
typedef enum {
    KHRONOS_FALSE = 0,
    KHRONOS_TRUE = 1,
    KHRONOS_BOOLEAN_ENUM_FORCE_SIZE = 0x7FFFFFFF
} khronos_boolean_enum_t;
# 90 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/glad/glad.h" 2
typedef unsigned int GLenum;
typedef unsigned char GLboolean;
typedef unsigned int GLbitfield;
typedef void GLvoid;
typedef khronos_int8_t GLbyte;
typedef khronos_uint8_t GLubyte;
typedef khronos_int16_t GLshort;
typedef khronos_uint16_t GLushort;
typedef int GLint;
typedef unsigned int GLuint;
typedef khronos_int32_t GLclampx;
typedef int GLsizei;
typedef khronos_float_t GLfloat;
typedef khronos_float_t GLclampf;
typedef double GLdouble;
typedef double GLclampd;
typedef void *GLeglClientBufferEXT;
typedef void *GLeglImageOES;
typedef char GLchar;
typedef char GLcharARB;



typedef unsigned int GLhandleARB;

typedef khronos_uint16_t GLhalf;
typedef khronos_uint16_t GLhalfARB;
typedef khronos_int32_t GLfixed;
typedef khronos_intptr_t GLintptr;
typedef khronos_intptr_t GLintptrARB;
typedef khronos_ssize_t GLsizeiptr;
typedef khronos_ssize_t GLsizeiptrARB;
typedef khronos_int64_t GLint64;
typedef khronos_int64_t GLint64EXT;
typedef khronos_uint64_t GLuint64;
typedef khronos_uint64_t GLuint64EXT;
typedef struct __GLsync *GLsync;
struct _cl_context;
struct _cl_event;
typedef void ( *GLDEBUGPROC)(GLenum source,GLenum type,GLuint id,GLenum severity,GLsizei length,const GLchar *message,const void *userParam);
typedef void ( *GLDEBUGPROCARB)(GLenum source,GLenum type,GLuint id,GLenum severity,GLsizei length,const GLchar *message,const void *userParam);
typedef void ( *GLDEBUGPROCKHR)(GLenum source,GLenum type,GLuint id,GLenum severity,GLsizei length,const GLchar *message,const void *userParam);
typedef void ( *GLDEBUGPROCAMD)(GLuint id,GLenum category,GLenum severity,GLsizei length,const GLchar *message,void *userParam);
typedef unsigned short GLhalfNV;
typedef GLintptr GLvdpauSurfaceNV;
typedef void ( *GLVULKANPROCNV)(void);
# 1034 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/glad/glad.h"
extern int GLAD_GL_VERSION_1_0;
typedef void ( * PFNGLCULLFACEPROC)(GLenum mode);
extern PFNGLCULLFACEPROC glad_glCullFace;

typedef void ( * PFNGLFRONTFACEPROC)(GLenum mode);
extern PFNGLFRONTFACEPROC glad_glFrontFace;

typedef void ( * PFNGLHINTPROC)(GLenum target, GLenum mode);
extern PFNGLHINTPROC glad_glHint;

typedef void ( * PFNGLLINEWIDTHPROC)(GLfloat width);
extern PFNGLLINEWIDTHPROC glad_glLineWidth;

typedef void ( * PFNGLPOINTSIZEPROC)(GLfloat size);
extern PFNGLPOINTSIZEPROC glad_glPointSize;

typedef void ( * PFNGLPOLYGONMODEPROC)(GLenum face, GLenum mode);
extern PFNGLPOLYGONMODEPROC glad_glPolygonMode;

typedef void ( * PFNGLSCISSORPROC)(GLint x, GLint y, GLsizei width, GLsizei height);
extern PFNGLSCISSORPROC glad_glScissor;

typedef void ( * PFNGLTEXPARAMETERFPROC)(GLenum target, GLenum pname, GLfloat param);
extern PFNGLTEXPARAMETERFPROC glad_glTexParameterf;

typedef void ( * PFNGLTEXPARAMETERFVPROC)(GLenum target, GLenum pname, const GLfloat *params);
extern PFNGLTEXPARAMETERFVPROC glad_glTexParameterfv;

typedef void ( * PFNGLTEXPARAMETERIPROC)(GLenum target, GLenum pname, GLint param);
extern PFNGLTEXPARAMETERIPROC glad_glTexParameteri;

typedef void ( * PFNGLTEXPARAMETERIVPROC)(GLenum target, GLenum pname, const GLint *params);
extern PFNGLTEXPARAMETERIVPROC glad_glTexParameteriv;

typedef void ( * PFNGLTEXIMAGE1DPROC)(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const void *pixels);
extern PFNGLTEXIMAGE1DPROC glad_glTexImage1D;

typedef void ( * PFNGLTEXIMAGE2DPROC)(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
extern PFNGLTEXIMAGE2DPROC glad_glTexImage2D;

typedef void ( * PFNGLDRAWBUFFERPROC)(GLenum buf);
extern PFNGLDRAWBUFFERPROC glad_glDrawBuffer;

typedef void ( * PFNGLCLEARPROC)(GLbitfield mask);
extern PFNGLCLEARPROC glad_glClear;

typedef void ( * PFNGLCLEARCOLORPROC)(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
extern PFNGLCLEARCOLORPROC glad_glClearColor;

typedef void ( * PFNGLCLEARSTENCILPROC)(GLint s);
extern PFNGLCLEARSTENCILPROC glad_glClearStencil;

typedef void ( * PFNGLCLEARDEPTHPROC)(GLdouble depth);
extern PFNGLCLEARDEPTHPROC glad_glClearDepth;

typedef void ( * PFNGLSTENCILMASKPROC)(GLuint mask);
extern PFNGLSTENCILMASKPROC glad_glStencilMask;

typedef void ( * PFNGLCOLORMASKPROC)(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
extern PFNGLCOLORMASKPROC glad_glColorMask;

typedef void ( * PFNGLDEPTHMASKPROC)(GLboolean flag);
extern PFNGLDEPTHMASKPROC glad_glDepthMask;

typedef void ( * PFNGLDISABLEPROC)(GLenum cap);
extern PFNGLDISABLEPROC glad_glDisable;

typedef void ( * PFNGLENABLEPROC)(GLenum cap);
extern PFNGLENABLEPROC glad_glEnable;

typedef void ( * PFNGLFINISHPROC)(void);
extern PFNGLFINISHPROC glad_glFinish;

typedef void ( * PFNGLFLUSHPROC)(void);
extern PFNGLFLUSHPROC glad_glFlush;

typedef void ( * PFNGLBLENDFUNCPROC)(GLenum sfactor, GLenum dfactor);
extern PFNGLBLENDFUNCPROC glad_glBlendFunc;

typedef void ( * PFNGLLOGICOPPROC)(GLenum opcode);
extern PFNGLLOGICOPPROC glad_glLogicOp;

typedef void ( * PFNGLSTENCILFUNCPROC)(GLenum func, GLint ref, GLuint mask);
extern PFNGLSTENCILFUNCPROC glad_glStencilFunc;

typedef void ( * PFNGLSTENCILOPPROC)(GLenum fail, GLenum zfail, GLenum zpass);
extern PFNGLSTENCILOPPROC glad_glStencilOp;

typedef void ( * PFNGLDEPTHFUNCPROC)(GLenum func);
extern PFNGLDEPTHFUNCPROC glad_glDepthFunc;

typedef void ( * PFNGLPIXELSTOREFPROC)(GLenum pname, GLfloat param);
extern PFNGLPIXELSTOREFPROC glad_glPixelStoref;

typedef void ( * PFNGLPIXELSTOREIPROC)(GLenum pname, GLint param);
extern PFNGLPIXELSTOREIPROC glad_glPixelStorei;

typedef void ( * PFNGLREADBUFFERPROC)(GLenum src);
extern PFNGLREADBUFFERPROC glad_glReadBuffer;

typedef void ( * PFNGLREADPIXELSPROC)(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void *pixels);
extern PFNGLREADPIXELSPROC glad_glReadPixels;

typedef void ( * PFNGLGETBOOLEANVPROC)(GLenum pname, GLboolean *data);
extern PFNGLGETBOOLEANVPROC glad_glGetBooleanv;

typedef void ( * PFNGLGETDOUBLEVPROC)(GLenum pname, GLdouble *data);
extern PFNGLGETDOUBLEVPROC glad_glGetDoublev;

typedef GLenum ( * PFNGLGETERRORPROC)(void);
extern PFNGLGETERRORPROC glad_glGetError;

typedef void ( * PFNGLGETFLOATVPROC)(GLenum pname, GLfloat *data);
extern PFNGLGETFLOATVPROC glad_glGetFloatv;

typedef void ( * PFNGLGETINTEGERVPROC)(GLenum pname, GLint *data);
extern PFNGLGETINTEGERVPROC glad_glGetIntegerv;

typedef const GLubyte * ( * PFNGLGETSTRINGPROC)(GLenum name);
extern PFNGLGETSTRINGPROC glad_glGetString;

typedef void ( * PFNGLGETTEXIMAGEPROC)(GLenum target, GLint level, GLenum format, GLenum type, void *pixels);
extern PFNGLGETTEXIMAGEPROC glad_glGetTexImage;

typedef void ( * PFNGLGETTEXPARAMETERFVPROC)(GLenum target, GLenum pname, GLfloat *params);
extern PFNGLGETTEXPARAMETERFVPROC glad_glGetTexParameterfv;

typedef void ( * PFNGLGETTEXPARAMETERIVPROC)(GLenum target, GLenum pname, GLint *params);
extern PFNGLGETTEXPARAMETERIVPROC glad_glGetTexParameteriv;

typedef void ( * PFNGLGETTEXLEVELPARAMETERFVPROC)(GLenum target, GLint level, GLenum pname, GLfloat *params);
extern PFNGLGETTEXLEVELPARAMETERFVPROC glad_glGetTexLevelParameterfv;

typedef void ( * PFNGLGETTEXLEVELPARAMETERIVPROC)(GLenum target, GLint level, GLenum pname, GLint *params);
extern PFNGLGETTEXLEVELPARAMETERIVPROC glad_glGetTexLevelParameteriv;

typedef GLboolean ( * PFNGLISENABLEDPROC)(GLenum cap);
extern PFNGLISENABLEDPROC glad_glIsEnabled;

typedef void ( * PFNGLDEPTHRANGEPROC)(GLdouble n, GLdouble f);
extern PFNGLDEPTHRANGEPROC glad_glDepthRange;

typedef void ( * PFNGLVIEWPORTPROC)(GLint x, GLint y, GLsizei width, GLsizei height);
extern PFNGLVIEWPORTPROC glad_glViewport;




extern int GLAD_GL_VERSION_1_1;
typedef void ( * PFNGLDRAWARRAYSPROC)(GLenum mode, GLint first, GLsizei count);
extern PFNGLDRAWARRAYSPROC glad_glDrawArrays;

typedef void ( * PFNGLDRAWELEMENTSPROC)(GLenum mode, GLsizei count, GLenum type, const void *indices);
extern PFNGLDRAWELEMENTSPROC glad_glDrawElements;

typedef void ( * PFNGLPOLYGONOFFSETPROC)(GLfloat factor, GLfloat units);
extern PFNGLPOLYGONOFFSETPROC glad_glPolygonOffset;

typedef void ( * PFNGLCOPYTEXIMAGE1DPROC)(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
extern PFNGLCOPYTEXIMAGE1DPROC glad_glCopyTexImage1D;

typedef void ( * PFNGLCOPYTEXIMAGE2DPROC)(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
extern PFNGLCOPYTEXIMAGE2DPROC glad_glCopyTexImage2D;

typedef void ( * PFNGLCOPYTEXSUBIMAGE1DPROC)(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
extern PFNGLCOPYTEXSUBIMAGE1DPROC glad_glCopyTexSubImage1D;

typedef void ( * PFNGLCOPYTEXSUBIMAGE2DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
extern PFNGLCOPYTEXSUBIMAGE2DPROC glad_glCopyTexSubImage2D;

typedef void ( * PFNGLTEXSUBIMAGE1DPROC)(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
extern PFNGLTEXSUBIMAGE1DPROC glad_glTexSubImage1D;

typedef void ( * PFNGLTEXSUBIMAGE2DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
extern PFNGLTEXSUBIMAGE2DPROC glad_glTexSubImage2D;

typedef void ( * PFNGLBINDTEXTUREPROC)(GLenum target, GLuint texture);
extern PFNGLBINDTEXTUREPROC glad_glBindTexture;

typedef void ( * PFNGLDELETETEXTURESPROC)(GLsizei n, const GLuint *textures);
extern PFNGLDELETETEXTURESPROC glad_glDeleteTextures;

typedef void ( * PFNGLGENTEXTURESPROC)(GLsizei n, GLuint *textures);
extern PFNGLGENTEXTURESPROC glad_glGenTextures;

typedef GLboolean ( * PFNGLISTEXTUREPROC)(GLuint texture);
extern PFNGLISTEXTUREPROC glad_glIsTexture;




extern int GLAD_GL_VERSION_1_2;
typedef void ( * PFNGLDRAWRANGEELEMENTSPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const void *indices);
extern PFNGLDRAWRANGEELEMENTSPROC glad_glDrawRangeElements;

typedef void ( * PFNGLTEXIMAGE3DPROC)(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
extern PFNGLTEXIMAGE3DPROC glad_glTexImage3D;

typedef void ( * PFNGLTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
extern PFNGLTEXSUBIMAGE3DPROC glad_glTexSubImage3D;

typedef void ( * PFNGLCOPYTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
extern PFNGLCOPYTEXSUBIMAGE3DPROC glad_glCopyTexSubImage3D;




extern int GLAD_GL_VERSION_1_3;
typedef void ( * PFNGLACTIVETEXTUREPROC)(GLenum texture);
extern PFNGLACTIVETEXTUREPROC glad_glActiveTexture;

typedef void ( * PFNGLSAMPLECOVERAGEPROC)(GLfloat value, GLboolean invert);
extern PFNGLSAMPLECOVERAGEPROC glad_glSampleCoverage;

typedef void ( * PFNGLCOMPRESSEDTEXIMAGE3DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const void *data);
extern PFNGLCOMPRESSEDTEXIMAGE3DPROC glad_glCompressedTexImage3D;

typedef void ( * PFNGLCOMPRESSEDTEXIMAGE2DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const void *data);
extern PFNGLCOMPRESSEDTEXIMAGE2DPROC glad_glCompressedTexImage2D;

typedef void ( * PFNGLCOMPRESSEDTEXIMAGE1DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const void *data);
extern PFNGLCOMPRESSEDTEXIMAGE1DPROC glad_glCompressedTexImage1D;

typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const void *data);
extern PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC glad_glCompressedTexSubImage3D;

typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void *data);
extern PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC glad_glCompressedTexSubImage2D;

typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC)(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const void *data);
extern PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC glad_glCompressedTexSubImage1D;

typedef void ( * PFNGLGETCOMPRESSEDTEXIMAGEPROC)(GLenum target, GLint level, void *img);
extern PFNGLGETCOMPRESSEDTEXIMAGEPROC glad_glGetCompressedTexImage;




extern int GLAD_GL_VERSION_1_4;
typedef void ( * PFNGLBLENDFUNCSEPARATEPROC)(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
extern PFNGLBLENDFUNCSEPARATEPROC glad_glBlendFuncSeparate;

typedef void ( * PFNGLMULTIDRAWARRAYSPROC)(GLenum mode, const GLint *first, const GLsizei *count, GLsizei drawcount);
extern PFNGLMULTIDRAWARRAYSPROC glad_glMultiDrawArrays;

typedef void ( * PFNGLMULTIDRAWELEMENTSPROC)(GLenum mode, const GLsizei *count, GLenum type, const void *const*indices, GLsizei drawcount);
extern PFNGLMULTIDRAWELEMENTSPROC glad_glMultiDrawElements;

typedef void ( * PFNGLPOINTPARAMETERFPROC)(GLenum pname, GLfloat param);
extern PFNGLPOINTPARAMETERFPROC glad_glPointParameterf;

typedef void ( * PFNGLPOINTPARAMETERFVPROC)(GLenum pname, const GLfloat *params);
extern PFNGLPOINTPARAMETERFVPROC glad_glPointParameterfv;

typedef void ( * PFNGLPOINTPARAMETERIPROC)(GLenum pname, GLint param);
extern PFNGLPOINTPARAMETERIPROC glad_glPointParameteri;

typedef void ( * PFNGLPOINTPARAMETERIVPROC)(GLenum pname, const GLint *params);
extern PFNGLPOINTPARAMETERIVPROC glad_glPointParameteriv;

typedef void ( * PFNGLBLENDCOLORPROC)(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
extern PFNGLBLENDCOLORPROC glad_glBlendColor;

typedef void ( * PFNGLBLENDEQUATIONPROC)(GLenum mode);
extern PFNGLBLENDEQUATIONPROC glad_glBlendEquation;




extern int GLAD_GL_VERSION_1_5;
typedef void ( * PFNGLGENQUERIESPROC)(GLsizei n, GLuint *ids);
extern PFNGLGENQUERIESPROC glad_glGenQueries;

typedef void ( * PFNGLDELETEQUERIESPROC)(GLsizei n, const GLuint *ids);
extern PFNGLDELETEQUERIESPROC glad_glDeleteQueries;

typedef GLboolean ( * PFNGLISQUERYPROC)(GLuint id);
extern PFNGLISQUERYPROC glad_glIsQuery;

typedef void ( * PFNGLBEGINQUERYPROC)(GLenum target, GLuint id);
extern PFNGLBEGINQUERYPROC glad_glBeginQuery;

typedef void ( * PFNGLENDQUERYPROC)(GLenum target);
extern PFNGLENDQUERYPROC glad_glEndQuery;

typedef void ( * PFNGLGETQUERYIVPROC)(GLenum target, GLenum pname, GLint *params);
extern PFNGLGETQUERYIVPROC glad_glGetQueryiv;

typedef void ( * PFNGLGETQUERYOBJECTIVPROC)(GLuint id, GLenum pname, GLint *params);
extern PFNGLGETQUERYOBJECTIVPROC glad_glGetQueryObjectiv;

typedef void ( * PFNGLGETQUERYOBJECTUIVPROC)(GLuint id, GLenum pname, GLuint *params);
extern PFNGLGETQUERYOBJECTUIVPROC glad_glGetQueryObjectuiv;

typedef void ( * PFNGLBINDBUFFERPROC)(GLenum target, GLuint buffer);
extern PFNGLBINDBUFFERPROC glad_glBindBuffer;

typedef void ( * PFNGLDELETEBUFFERSPROC)(GLsizei n, const GLuint *buffers);
extern PFNGLDELETEBUFFERSPROC glad_glDeleteBuffers;

typedef void ( * PFNGLGENBUFFERSPROC)(GLsizei n, GLuint *buffers);
extern PFNGLGENBUFFERSPROC glad_glGenBuffers;

typedef GLboolean ( * PFNGLISBUFFERPROC)(GLuint buffer);
extern PFNGLISBUFFERPROC glad_glIsBuffer;

typedef void ( * PFNGLBUFFERDATAPROC)(GLenum target, GLsizeiptr size, const void *data, GLenum usage);
extern PFNGLBUFFERDATAPROC glad_glBufferData;

typedef void ( * PFNGLBUFFERSUBDATAPROC)(GLenum target, GLintptr offset, GLsizeiptr size, const void *data);
extern PFNGLBUFFERSUBDATAPROC glad_glBufferSubData;

typedef void ( * PFNGLGETBUFFERSUBDATAPROC)(GLenum target, GLintptr offset, GLsizeiptr size, void *data);
extern PFNGLGETBUFFERSUBDATAPROC glad_glGetBufferSubData;

typedef void * ( * PFNGLMAPBUFFERPROC)(GLenum target, GLenum access);
extern PFNGLMAPBUFFERPROC glad_glMapBuffer;

typedef GLboolean ( * PFNGLUNMAPBUFFERPROC)(GLenum target);
extern PFNGLUNMAPBUFFERPROC glad_glUnmapBuffer;

typedef void ( * PFNGLGETBUFFERPARAMETERIVPROC)(GLenum target, GLenum pname, GLint *params);
extern PFNGLGETBUFFERPARAMETERIVPROC glad_glGetBufferParameteriv;

typedef void ( * PFNGLGETBUFFERPOINTERVPROC)(GLenum target, GLenum pname, void **params);
extern PFNGLGETBUFFERPOINTERVPROC glad_glGetBufferPointerv;




extern int GLAD_GL_VERSION_2_0;
typedef void ( * PFNGLBLENDEQUATIONSEPARATEPROC)(GLenum modeRGB, GLenum modeAlpha);
extern PFNGLBLENDEQUATIONSEPARATEPROC glad_glBlendEquationSeparate;

typedef void ( * PFNGLDRAWBUFFERSPROC)(GLsizei n, const GLenum *bufs);
extern PFNGLDRAWBUFFERSPROC glad_glDrawBuffers;

typedef void ( * PFNGLSTENCILOPSEPARATEPROC)(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
extern PFNGLSTENCILOPSEPARATEPROC glad_glStencilOpSeparate;

typedef void ( * PFNGLSTENCILFUNCSEPARATEPROC)(GLenum face, GLenum func, GLint ref, GLuint mask);
extern PFNGLSTENCILFUNCSEPARATEPROC glad_glStencilFuncSeparate;

typedef void ( * PFNGLSTENCILMASKSEPARATEPROC)(GLenum face, GLuint mask);
extern PFNGLSTENCILMASKSEPARATEPROC glad_glStencilMaskSeparate;

typedef void ( * PFNGLATTACHSHADERPROC)(GLuint program, GLuint shader);
extern PFNGLATTACHSHADERPROC glad_glAttachShader;

typedef void ( * PFNGLBINDATTRIBLOCATIONPROC)(GLuint program, GLuint index, const GLchar *name);
extern PFNGLBINDATTRIBLOCATIONPROC glad_glBindAttribLocation;

typedef void ( * PFNGLCOMPILESHADERPROC)(GLuint shader);
extern PFNGLCOMPILESHADERPROC glad_glCompileShader;

typedef GLuint ( * PFNGLCREATEPROGRAMPROC)(void);
extern PFNGLCREATEPROGRAMPROC glad_glCreateProgram;

typedef GLuint ( * PFNGLCREATESHADERPROC)(GLenum type);
extern PFNGLCREATESHADERPROC glad_glCreateShader;

typedef void ( * PFNGLDELETEPROGRAMPROC)(GLuint program);
extern PFNGLDELETEPROGRAMPROC glad_glDeleteProgram;

typedef void ( * PFNGLDELETESHADERPROC)(GLuint shader);
extern PFNGLDELETESHADERPROC glad_glDeleteShader;

typedef void ( * PFNGLDETACHSHADERPROC)(GLuint program, GLuint shader);
extern PFNGLDETACHSHADERPROC glad_glDetachShader;

typedef void ( * PFNGLDISABLEVERTEXATTRIBARRAYPROC)(GLuint index);
extern PFNGLDISABLEVERTEXATTRIBARRAYPROC glad_glDisableVertexAttribArray;

typedef void ( * PFNGLENABLEVERTEXATTRIBARRAYPROC)(GLuint index);
extern PFNGLENABLEVERTEXATTRIBARRAYPROC glad_glEnableVertexAttribArray;

typedef void ( * PFNGLGETACTIVEATTRIBPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
extern PFNGLGETACTIVEATTRIBPROC glad_glGetActiveAttrib;

typedef void ( * PFNGLGETACTIVEUNIFORMPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
extern PFNGLGETACTIVEUNIFORMPROC glad_glGetActiveUniform;

typedef void ( * PFNGLGETATTACHEDSHADERSPROC)(GLuint program, GLsizei maxCount, GLsizei *count, GLuint *shaders);
extern PFNGLGETATTACHEDSHADERSPROC glad_glGetAttachedShaders;

typedef GLint ( * PFNGLGETATTRIBLOCATIONPROC)(GLuint program, const GLchar *name);
extern PFNGLGETATTRIBLOCATIONPROC glad_glGetAttribLocation;

typedef void ( * PFNGLGETPROGRAMIVPROC)(GLuint program, GLenum pname, GLint *params);
extern PFNGLGETPROGRAMIVPROC glad_glGetProgramiv;

typedef void ( * PFNGLGETPROGRAMINFOLOGPROC)(GLuint program, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
extern PFNGLGETPROGRAMINFOLOGPROC glad_glGetProgramInfoLog;

typedef void ( * PFNGLGETSHADERIVPROC)(GLuint shader, GLenum pname, GLint *params);
extern PFNGLGETSHADERIVPROC glad_glGetShaderiv;

typedef void ( * PFNGLGETSHADERINFOLOGPROC)(GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
extern PFNGLGETSHADERINFOLOGPROC glad_glGetShaderInfoLog;

typedef void ( * PFNGLGETSHADERSOURCEPROC)(GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *source);
extern PFNGLGETSHADERSOURCEPROC glad_glGetShaderSource;

typedef GLint ( * PFNGLGETUNIFORMLOCATIONPROC)(GLuint program, const GLchar *name);
extern PFNGLGETUNIFORMLOCATIONPROC glad_glGetUniformLocation;

typedef void ( * PFNGLGETUNIFORMFVPROC)(GLuint program, GLint location, GLfloat *params);
extern PFNGLGETUNIFORMFVPROC glad_glGetUniformfv;

typedef void ( * PFNGLGETUNIFORMIVPROC)(GLuint program, GLint location, GLint *params);
extern PFNGLGETUNIFORMIVPROC glad_glGetUniformiv;

typedef void ( * PFNGLGETVERTEXATTRIBDVPROC)(GLuint index, GLenum pname, GLdouble *params);
extern PFNGLGETVERTEXATTRIBDVPROC glad_glGetVertexAttribdv;

typedef void ( * PFNGLGETVERTEXATTRIBFVPROC)(GLuint index, GLenum pname, GLfloat *params);
extern PFNGLGETVERTEXATTRIBFVPROC glad_glGetVertexAttribfv;

typedef void ( * PFNGLGETVERTEXATTRIBIVPROC)(GLuint index, GLenum pname, GLint *params);
extern PFNGLGETVERTEXATTRIBIVPROC glad_glGetVertexAttribiv;

typedef void ( * PFNGLGETVERTEXATTRIBPOINTERVPROC)(GLuint index, GLenum pname, void **pointer);
extern PFNGLGETVERTEXATTRIBPOINTERVPROC glad_glGetVertexAttribPointerv;

typedef GLboolean ( * PFNGLISPROGRAMPROC)(GLuint program);
extern PFNGLISPROGRAMPROC glad_glIsProgram;

typedef GLboolean ( * PFNGLISSHADERPROC)(GLuint shader);
extern PFNGLISSHADERPROC glad_glIsShader;

typedef void ( * PFNGLLINKPROGRAMPROC)(GLuint program);
extern PFNGLLINKPROGRAMPROC glad_glLinkProgram;

typedef void ( * PFNGLSHADERSOURCEPROC)(GLuint shader, GLsizei count, const GLchar *const*string, const GLint *length);
extern PFNGLSHADERSOURCEPROC glad_glShaderSource;

typedef void ( * PFNGLUSEPROGRAMPROC)(GLuint program);
extern PFNGLUSEPROGRAMPROC glad_glUseProgram;

typedef void ( * PFNGLUNIFORM1FPROC)(GLint location, GLfloat v0);
extern PFNGLUNIFORM1FPROC glad_glUniform1f;

typedef void ( * PFNGLUNIFORM2FPROC)(GLint location, GLfloat v0, GLfloat v1);
extern PFNGLUNIFORM2FPROC glad_glUniform2f;

typedef void ( * PFNGLUNIFORM3FPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
extern PFNGLUNIFORM3FPROC glad_glUniform3f;

typedef void ( * PFNGLUNIFORM4FPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
extern PFNGLUNIFORM4FPROC glad_glUniform4f;

typedef void ( * PFNGLUNIFORM1IPROC)(GLint location, GLint v0);
extern PFNGLUNIFORM1IPROC glad_glUniform1i;

typedef void ( * PFNGLUNIFORM2IPROC)(GLint location, GLint v0, GLint v1);
extern PFNGLUNIFORM2IPROC glad_glUniform2i;

typedef void ( * PFNGLUNIFORM3IPROC)(GLint location, GLint v0, GLint v1, GLint v2);
extern PFNGLUNIFORM3IPROC glad_glUniform3i;

typedef void ( * PFNGLUNIFORM4IPROC)(GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
extern PFNGLUNIFORM4IPROC glad_glUniform4i;

typedef void ( * PFNGLUNIFORM1FVPROC)(GLint location, GLsizei count, const GLfloat *value);
extern PFNGLUNIFORM1FVPROC glad_glUniform1fv;

typedef void ( * PFNGLUNIFORM2FVPROC)(GLint location, GLsizei count, const GLfloat *value);
extern PFNGLUNIFORM2FVPROC glad_glUniform2fv;

typedef void ( * PFNGLUNIFORM3FVPROC)(GLint location, GLsizei count, const GLfloat *value);
extern PFNGLUNIFORM3FVPROC glad_glUniform3fv;

typedef void ( * PFNGLUNIFORM4FVPROC)(GLint location, GLsizei count, const GLfloat *value);
extern PFNGLUNIFORM4FVPROC glad_glUniform4fv;

typedef void ( * PFNGLUNIFORM1IVPROC)(GLint location, GLsizei count, const GLint *value);
extern PFNGLUNIFORM1IVPROC glad_glUniform1iv;

typedef void ( * PFNGLUNIFORM2IVPROC)(GLint location, GLsizei count, const GLint *value);
extern PFNGLUNIFORM2IVPROC glad_glUniform2iv;

typedef void ( * PFNGLUNIFORM3IVPROC)(GLint location, GLsizei count, const GLint *value);
extern PFNGLUNIFORM3IVPROC glad_glUniform3iv;

typedef void ( * PFNGLUNIFORM4IVPROC)(GLint location, GLsizei count, const GLint *value);
extern PFNGLUNIFORM4IVPROC glad_glUniform4iv;

typedef void ( * PFNGLUNIFORMMATRIX2FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
extern PFNGLUNIFORMMATRIX2FVPROC glad_glUniformMatrix2fv;

typedef void ( * PFNGLUNIFORMMATRIX3FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
extern PFNGLUNIFORMMATRIX3FVPROC glad_glUniformMatrix3fv;

typedef void ( * PFNGLUNIFORMMATRIX4FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
extern PFNGLUNIFORMMATRIX4FVPROC glad_glUniformMatrix4fv;

typedef void ( * PFNGLVALIDATEPROGRAMPROC)(GLuint program);
extern PFNGLVALIDATEPROGRAMPROC glad_glValidateProgram;

typedef void ( * PFNGLVERTEXATTRIB1DPROC)(GLuint index, GLdouble x);
extern PFNGLVERTEXATTRIB1DPROC glad_glVertexAttrib1d;

typedef void ( * PFNGLVERTEXATTRIB1DVPROC)(GLuint index, const GLdouble *v);
extern PFNGLVERTEXATTRIB1DVPROC glad_glVertexAttrib1dv;

typedef void ( * PFNGLVERTEXATTRIB1FPROC)(GLuint index, GLfloat x);
extern PFNGLVERTEXATTRIB1FPROC glad_glVertexAttrib1f;

typedef void ( * PFNGLVERTEXATTRIB1FVPROC)(GLuint index, const GLfloat *v);
extern PFNGLVERTEXATTRIB1FVPROC glad_glVertexAttrib1fv;

typedef void ( * PFNGLVERTEXATTRIB1SPROC)(GLuint index, GLshort x);
extern PFNGLVERTEXATTRIB1SPROC glad_glVertexAttrib1s;

typedef void ( * PFNGLVERTEXATTRIB1SVPROC)(GLuint index, const GLshort *v);
extern PFNGLVERTEXATTRIB1SVPROC glad_glVertexAttrib1sv;

typedef void ( * PFNGLVERTEXATTRIB2DPROC)(GLuint index, GLdouble x, GLdouble y);
extern PFNGLVERTEXATTRIB2DPROC glad_glVertexAttrib2d;

typedef void ( * PFNGLVERTEXATTRIB2DVPROC)(GLuint index, const GLdouble *v);
extern PFNGLVERTEXATTRIB2DVPROC glad_glVertexAttrib2dv;

typedef void ( * PFNGLVERTEXATTRIB2FPROC)(GLuint index, GLfloat x, GLfloat y);
extern PFNGLVERTEXATTRIB2FPROC glad_glVertexAttrib2f;

typedef void ( * PFNGLVERTEXATTRIB2FVPROC)(GLuint index, const GLfloat *v);
extern PFNGLVERTEXATTRIB2FVPROC glad_glVertexAttrib2fv;

typedef void ( * PFNGLVERTEXATTRIB2SPROC)(GLuint index, GLshort x, GLshort y);
extern PFNGLVERTEXATTRIB2SPROC glad_glVertexAttrib2s;

typedef void ( * PFNGLVERTEXATTRIB2SVPROC)(GLuint index, const GLshort *v);
extern PFNGLVERTEXATTRIB2SVPROC glad_glVertexAttrib2sv;

typedef void ( * PFNGLVERTEXATTRIB3DPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z);
extern PFNGLVERTEXATTRIB3DPROC glad_glVertexAttrib3d;

typedef void ( * PFNGLVERTEXATTRIB3DVPROC)(GLuint index, const GLdouble *v);
extern PFNGLVERTEXATTRIB3DVPROC glad_glVertexAttrib3dv;

typedef void ( * PFNGLVERTEXATTRIB3FPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat z);
extern PFNGLVERTEXATTRIB3FPROC glad_glVertexAttrib3f;

typedef void ( * PFNGLVERTEXATTRIB3FVPROC)(GLuint index, const GLfloat *v);
extern PFNGLVERTEXATTRIB3FVPROC glad_glVertexAttrib3fv;

typedef void ( * PFNGLVERTEXATTRIB3SPROC)(GLuint index, GLshort x, GLshort y, GLshort z);
extern PFNGLVERTEXATTRIB3SPROC glad_glVertexAttrib3s;

typedef void ( * PFNGLVERTEXATTRIB3SVPROC)(GLuint index, const GLshort *v);
extern PFNGLVERTEXATTRIB3SVPROC glad_glVertexAttrib3sv;

typedef void ( * PFNGLVERTEXATTRIB4NBVPROC)(GLuint index, const GLbyte *v);
extern PFNGLVERTEXATTRIB4NBVPROC glad_glVertexAttrib4Nbv;

typedef void ( * PFNGLVERTEXATTRIB4NIVPROC)(GLuint index, const GLint *v);
extern PFNGLVERTEXATTRIB4NIVPROC glad_glVertexAttrib4Niv;

typedef void ( * PFNGLVERTEXATTRIB4NSVPROC)(GLuint index, const GLshort *v);
extern PFNGLVERTEXATTRIB4NSVPROC glad_glVertexAttrib4Nsv;

typedef void ( * PFNGLVERTEXATTRIB4NUBPROC)(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
extern PFNGLVERTEXATTRIB4NUBPROC glad_glVertexAttrib4Nub;

typedef void ( * PFNGLVERTEXATTRIB4NUBVPROC)(GLuint index, const GLubyte *v);
extern PFNGLVERTEXATTRIB4NUBVPROC glad_glVertexAttrib4Nubv;

typedef void ( * PFNGLVERTEXATTRIB4NUIVPROC)(GLuint index, const GLuint *v);
extern PFNGLVERTEXATTRIB4NUIVPROC glad_glVertexAttrib4Nuiv;

typedef void ( * PFNGLVERTEXATTRIB4NUSVPROC)(GLuint index, const GLushort *v);
extern PFNGLVERTEXATTRIB4NUSVPROC glad_glVertexAttrib4Nusv;

typedef void ( * PFNGLVERTEXATTRIB4BVPROC)(GLuint index, const GLbyte *v);
extern PFNGLVERTEXATTRIB4BVPROC glad_glVertexAttrib4bv;

typedef void ( * PFNGLVERTEXATTRIB4DPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
extern PFNGLVERTEXATTRIB4DPROC glad_glVertexAttrib4d;

typedef void ( * PFNGLVERTEXATTRIB4DVPROC)(GLuint index, const GLdouble *v);
extern PFNGLVERTEXATTRIB4DVPROC glad_glVertexAttrib4dv;

typedef void ( * PFNGLVERTEXATTRIB4FPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
extern PFNGLVERTEXATTRIB4FPROC glad_glVertexAttrib4f;

typedef void ( * PFNGLVERTEXATTRIB4FVPROC)(GLuint index, const GLfloat *v);
extern PFNGLVERTEXATTRIB4FVPROC glad_glVertexAttrib4fv;

typedef void ( * PFNGLVERTEXATTRIB4IVPROC)(GLuint index, const GLint *v);
extern PFNGLVERTEXATTRIB4IVPROC glad_glVertexAttrib4iv;

typedef void ( * PFNGLVERTEXATTRIB4SPROC)(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
extern PFNGLVERTEXATTRIB4SPROC glad_glVertexAttrib4s;

typedef void ( * PFNGLVERTEXATTRIB4SVPROC)(GLuint index, const GLshort *v);
extern PFNGLVERTEXATTRIB4SVPROC glad_glVertexAttrib4sv;

typedef void ( * PFNGLVERTEXATTRIB4UBVPROC)(GLuint index, const GLubyte *v);
extern PFNGLVERTEXATTRIB4UBVPROC glad_glVertexAttrib4ubv;

typedef void ( * PFNGLVERTEXATTRIB4UIVPROC)(GLuint index, const GLuint *v);
extern PFNGLVERTEXATTRIB4UIVPROC glad_glVertexAttrib4uiv;

typedef void ( * PFNGLVERTEXATTRIB4USVPROC)(GLuint index, const GLushort *v);
extern PFNGLVERTEXATTRIB4USVPROC glad_glVertexAttrib4usv;

typedef void ( * PFNGLVERTEXATTRIBPOINTERPROC)(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const void *pointer);
extern PFNGLVERTEXATTRIBPOINTERPROC glad_glVertexAttribPointer;




extern int GLAD_GL_VERSION_2_1;
typedef void ( * PFNGLUNIFORMMATRIX2X3FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
extern PFNGLUNIFORMMATRIX2X3FVPROC glad_glUniformMatrix2x3fv;

typedef void ( * PFNGLUNIFORMMATRIX3X2FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
extern PFNGLUNIFORMMATRIX3X2FVPROC glad_glUniformMatrix3x2fv;

typedef void ( * PFNGLUNIFORMMATRIX2X4FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
extern PFNGLUNIFORMMATRIX2X4FVPROC glad_glUniformMatrix2x4fv;

typedef void ( * PFNGLUNIFORMMATRIX4X2FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
extern PFNGLUNIFORMMATRIX4X2FVPROC glad_glUniformMatrix4x2fv;

typedef void ( * PFNGLUNIFORMMATRIX3X4FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
extern PFNGLUNIFORMMATRIX3X4FVPROC glad_glUniformMatrix3x4fv;

typedef void ( * PFNGLUNIFORMMATRIX4X3FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
extern PFNGLUNIFORMMATRIX4X3FVPROC glad_glUniformMatrix4x3fv;




extern int GLAD_GL_VERSION_3_0;
typedef void ( * PFNGLCOLORMASKIPROC)(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
extern PFNGLCOLORMASKIPROC glad_glColorMaski;

typedef void ( * PFNGLGETBOOLEANI_VPROC)(GLenum target, GLuint index, GLboolean *data);
extern PFNGLGETBOOLEANI_VPROC glad_glGetBooleani_v;

typedef void ( * PFNGLGETINTEGERI_VPROC)(GLenum target, GLuint index, GLint *data);
extern PFNGLGETINTEGERI_VPROC glad_glGetIntegeri_v;

typedef void ( * PFNGLENABLEIPROC)(GLenum target, GLuint index);
extern PFNGLENABLEIPROC glad_glEnablei;

typedef void ( * PFNGLDISABLEIPROC)(GLenum target, GLuint index);
extern PFNGLDISABLEIPROC glad_glDisablei;

typedef GLboolean ( * PFNGLISENABLEDIPROC)(GLenum target, GLuint index);
extern PFNGLISENABLEDIPROC glad_glIsEnabledi;

typedef void ( * PFNGLBEGINTRANSFORMFEEDBACKPROC)(GLenum primitiveMode);
extern PFNGLBEGINTRANSFORMFEEDBACKPROC glad_glBeginTransformFeedback;

typedef void ( * PFNGLENDTRANSFORMFEEDBACKPROC)(void);
extern PFNGLENDTRANSFORMFEEDBACKPROC glad_glEndTransformFeedback;

typedef void ( * PFNGLBINDBUFFERRANGEPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
extern PFNGLBINDBUFFERRANGEPROC glad_glBindBufferRange;

typedef void ( * PFNGLBINDBUFFERBASEPROC)(GLenum target, GLuint index, GLuint buffer);
extern PFNGLBINDBUFFERBASEPROC glad_glBindBufferBase;

typedef void ( * PFNGLTRANSFORMFEEDBACKVARYINGSPROC)(GLuint program, GLsizei count, const GLchar *const*varyings, GLenum bufferMode);
extern PFNGLTRANSFORMFEEDBACKVARYINGSPROC glad_glTransformFeedbackVaryings;

typedef void ( * PFNGLGETTRANSFORMFEEDBACKVARYINGPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name);
extern PFNGLGETTRANSFORMFEEDBACKVARYINGPROC glad_glGetTransformFeedbackVarying;

typedef void ( * PFNGLCLAMPCOLORPROC)(GLenum target, GLenum clamp);
extern PFNGLCLAMPCOLORPROC glad_glClampColor;

typedef void ( * PFNGLBEGINCONDITIONALRENDERPROC)(GLuint id, GLenum mode);
extern PFNGLBEGINCONDITIONALRENDERPROC glad_glBeginConditionalRender;

typedef void ( * PFNGLENDCONDITIONALRENDERPROC)(void);
extern PFNGLENDCONDITIONALRENDERPROC glad_glEndConditionalRender;

typedef void ( * PFNGLVERTEXATTRIBIPOINTERPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, const void *pointer);
extern PFNGLVERTEXATTRIBIPOINTERPROC glad_glVertexAttribIPointer;

typedef void ( * PFNGLGETVERTEXATTRIBIIVPROC)(GLuint index, GLenum pname, GLint *params);
extern PFNGLGETVERTEXATTRIBIIVPROC glad_glGetVertexAttribIiv;

typedef void ( * PFNGLGETVERTEXATTRIBIUIVPROC)(GLuint index, GLenum pname, GLuint *params);
extern PFNGLGETVERTEXATTRIBIUIVPROC glad_glGetVertexAttribIuiv;

typedef void ( * PFNGLVERTEXATTRIBI1IPROC)(GLuint index, GLint x);
extern PFNGLVERTEXATTRIBI1IPROC glad_glVertexAttribI1i;

typedef void ( * PFNGLVERTEXATTRIBI2IPROC)(GLuint index, GLint x, GLint y);
extern PFNGLVERTEXATTRIBI2IPROC glad_glVertexAttribI2i;

typedef void ( * PFNGLVERTEXATTRIBI3IPROC)(GLuint index, GLint x, GLint y, GLint z);
extern PFNGLVERTEXATTRIBI3IPROC glad_glVertexAttribI3i;

typedef void ( * PFNGLVERTEXATTRIBI4IPROC)(GLuint index, GLint x, GLint y, GLint z, GLint w);
extern PFNGLVERTEXATTRIBI4IPROC glad_glVertexAttribI4i;

typedef void ( * PFNGLVERTEXATTRIBI1UIPROC)(GLuint index, GLuint x);
extern PFNGLVERTEXATTRIBI1UIPROC glad_glVertexAttribI1ui;

typedef void ( * PFNGLVERTEXATTRIBI2UIPROC)(GLuint index, GLuint x, GLuint y);
extern PFNGLVERTEXATTRIBI2UIPROC glad_glVertexAttribI2ui;

typedef void ( * PFNGLVERTEXATTRIBI3UIPROC)(GLuint index, GLuint x, GLuint y, GLuint z);
extern PFNGLVERTEXATTRIBI3UIPROC glad_glVertexAttribI3ui;

typedef void ( * PFNGLVERTEXATTRIBI4UIPROC)(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
extern PFNGLVERTEXATTRIBI4UIPROC glad_glVertexAttribI4ui;

typedef void ( * PFNGLVERTEXATTRIBI1IVPROC)(GLuint index, const GLint *v);
extern PFNGLVERTEXATTRIBI1IVPROC glad_glVertexAttribI1iv;

typedef void ( * PFNGLVERTEXATTRIBI2IVPROC)(GLuint index, const GLint *v);
extern PFNGLVERTEXATTRIBI2IVPROC glad_glVertexAttribI2iv;

typedef void ( * PFNGLVERTEXATTRIBI3IVPROC)(GLuint index, const GLint *v);
extern PFNGLVERTEXATTRIBI3IVPROC glad_glVertexAttribI3iv;

typedef void ( * PFNGLVERTEXATTRIBI4IVPROC)(GLuint index, const GLint *v);
extern PFNGLVERTEXATTRIBI4IVPROC glad_glVertexAttribI4iv;

typedef void ( * PFNGLVERTEXATTRIBI1UIVPROC)(GLuint index, const GLuint *v);
extern PFNGLVERTEXATTRIBI1UIVPROC glad_glVertexAttribI1uiv;

typedef void ( * PFNGLVERTEXATTRIBI2UIVPROC)(GLuint index, const GLuint *v);
extern PFNGLVERTEXATTRIBI2UIVPROC glad_glVertexAttribI2uiv;

typedef void ( * PFNGLVERTEXATTRIBI3UIVPROC)(GLuint index, const GLuint *v);
extern PFNGLVERTEXATTRIBI3UIVPROC glad_glVertexAttribI3uiv;

typedef void ( * PFNGLVERTEXATTRIBI4UIVPROC)(GLuint index, const GLuint *v);
extern PFNGLVERTEXATTRIBI4UIVPROC glad_glVertexAttribI4uiv;

typedef void ( * PFNGLVERTEXATTRIBI4BVPROC)(GLuint index, const GLbyte *v);
extern PFNGLVERTEXATTRIBI4BVPROC glad_glVertexAttribI4bv;

typedef void ( * PFNGLVERTEXATTRIBI4SVPROC)(GLuint index, const GLshort *v);
extern PFNGLVERTEXATTRIBI4SVPROC glad_glVertexAttribI4sv;

typedef void ( * PFNGLVERTEXATTRIBI4UBVPROC)(GLuint index, const GLubyte *v);
extern PFNGLVERTEXATTRIBI4UBVPROC glad_glVertexAttribI4ubv;

typedef void ( * PFNGLVERTEXATTRIBI4USVPROC)(GLuint index, const GLushort *v);
extern PFNGLVERTEXATTRIBI4USVPROC glad_glVertexAttribI4usv;

typedef void ( * PFNGLGETUNIFORMUIVPROC)(GLuint program, GLint location, GLuint *params);
extern PFNGLGETUNIFORMUIVPROC glad_glGetUniformuiv;

typedef void ( * PFNGLBINDFRAGDATALOCATIONPROC)(GLuint program, GLuint color, const GLchar *name);
extern PFNGLBINDFRAGDATALOCATIONPROC glad_glBindFragDataLocation;

typedef GLint ( * PFNGLGETFRAGDATALOCATIONPROC)(GLuint program, const GLchar *name);
extern PFNGLGETFRAGDATALOCATIONPROC glad_glGetFragDataLocation;

typedef void ( * PFNGLUNIFORM1UIPROC)(GLint location, GLuint v0);
extern PFNGLUNIFORM1UIPROC glad_glUniform1ui;

typedef void ( * PFNGLUNIFORM2UIPROC)(GLint location, GLuint v0, GLuint v1);
extern PFNGLUNIFORM2UIPROC glad_glUniform2ui;

typedef void ( * PFNGLUNIFORM3UIPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2);
extern PFNGLUNIFORM3UIPROC glad_glUniform3ui;

typedef void ( * PFNGLUNIFORM4UIPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
extern PFNGLUNIFORM4UIPROC glad_glUniform4ui;

typedef void ( * PFNGLUNIFORM1UIVPROC)(GLint location, GLsizei count, const GLuint *value);
extern PFNGLUNIFORM1UIVPROC glad_glUniform1uiv;

typedef void ( * PFNGLUNIFORM2UIVPROC)(GLint location, GLsizei count, const GLuint *value);
extern PFNGLUNIFORM2UIVPROC glad_glUniform2uiv;

typedef void ( * PFNGLUNIFORM3UIVPROC)(GLint location, GLsizei count, const GLuint *value);
extern PFNGLUNIFORM3UIVPROC glad_glUniform3uiv;

typedef void ( * PFNGLUNIFORM4UIVPROC)(GLint location, GLsizei count, const GLuint *value);
extern PFNGLUNIFORM4UIVPROC glad_glUniform4uiv;

typedef void ( * PFNGLTEXPARAMETERIIVPROC)(GLenum target, GLenum pname, const GLint *params);
extern PFNGLTEXPARAMETERIIVPROC glad_glTexParameterIiv;

typedef void ( * PFNGLTEXPARAMETERIUIVPROC)(GLenum target, GLenum pname, const GLuint *params);
extern PFNGLTEXPARAMETERIUIVPROC glad_glTexParameterIuiv;

typedef void ( * PFNGLGETTEXPARAMETERIIVPROC)(GLenum target, GLenum pname, GLint *params);
extern PFNGLGETTEXPARAMETERIIVPROC glad_glGetTexParameterIiv;

typedef void ( * PFNGLGETTEXPARAMETERIUIVPROC)(GLenum target, GLenum pname, GLuint *params);
extern PFNGLGETTEXPARAMETERIUIVPROC glad_glGetTexParameterIuiv;

typedef void ( * PFNGLCLEARBUFFERIVPROC)(GLenum buffer, GLint drawbuffer, const GLint *value);
extern PFNGLCLEARBUFFERIVPROC glad_glClearBufferiv;

typedef void ( * PFNGLCLEARBUFFERUIVPROC)(GLenum buffer, GLint drawbuffer, const GLuint *value);
extern PFNGLCLEARBUFFERUIVPROC glad_glClearBufferuiv;

typedef void ( * PFNGLCLEARBUFFERFVPROC)(GLenum buffer, GLint drawbuffer, const GLfloat *value);
extern PFNGLCLEARBUFFERFVPROC glad_glClearBufferfv;

typedef void ( * PFNGLCLEARBUFFERFIPROC)(GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
extern PFNGLCLEARBUFFERFIPROC glad_glClearBufferfi;

typedef const GLubyte * ( * PFNGLGETSTRINGIPROC)(GLenum name, GLuint index);
extern PFNGLGETSTRINGIPROC glad_glGetStringi;

typedef GLboolean ( * PFNGLISRENDERBUFFERPROC)(GLuint renderbuffer);
extern PFNGLISRENDERBUFFERPROC glad_glIsRenderbuffer;

typedef void ( * PFNGLBINDRENDERBUFFERPROC)(GLenum target, GLuint renderbuffer);
extern PFNGLBINDRENDERBUFFERPROC glad_glBindRenderbuffer;

typedef void ( * PFNGLDELETERENDERBUFFERSPROC)(GLsizei n, const GLuint *renderbuffers);
extern PFNGLDELETERENDERBUFFERSPROC glad_glDeleteRenderbuffers;

typedef void ( * PFNGLGENRENDERBUFFERSPROC)(GLsizei n, GLuint *renderbuffers);
extern PFNGLGENRENDERBUFFERSPROC glad_glGenRenderbuffers;

typedef void ( * PFNGLRENDERBUFFERSTORAGEPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
extern PFNGLRENDERBUFFERSTORAGEPROC glad_glRenderbufferStorage;

typedef void ( * PFNGLGETRENDERBUFFERPARAMETERIVPROC)(GLenum target, GLenum pname, GLint *params);
extern PFNGLGETRENDERBUFFERPARAMETERIVPROC glad_glGetRenderbufferParameteriv;

typedef GLboolean ( * PFNGLISFRAMEBUFFERPROC)(GLuint framebuffer);
extern PFNGLISFRAMEBUFFERPROC glad_glIsFramebuffer;

typedef void ( * PFNGLBINDFRAMEBUFFERPROC)(GLenum target, GLuint framebuffer);
extern PFNGLBINDFRAMEBUFFERPROC glad_glBindFramebuffer;

typedef void ( * PFNGLDELETEFRAMEBUFFERSPROC)(GLsizei n, const GLuint *framebuffers);
extern PFNGLDELETEFRAMEBUFFERSPROC glad_glDeleteFramebuffers;

typedef void ( * PFNGLGENFRAMEBUFFERSPROC)(GLsizei n, GLuint *framebuffers);
extern PFNGLGENFRAMEBUFFERSPROC glad_glGenFramebuffers;

typedef GLenum ( * PFNGLCHECKFRAMEBUFFERSTATUSPROC)(GLenum target);
extern PFNGLCHECKFRAMEBUFFERSTATUSPROC glad_glCheckFramebufferStatus;

typedef void ( * PFNGLFRAMEBUFFERTEXTURE1DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
extern PFNGLFRAMEBUFFERTEXTURE1DPROC glad_glFramebufferTexture1D;

typedef void ( * PFNGLFRAMEBUFFERTEXTURE2DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
extern PFNGLFRAMEBUFFERTEXTURE2DPROC glad_glFramebufferTexture2D;

typedef void ( * PFNGLFRAMEBUFFERTEXTURE3DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
extern PFNGLFRAMEBUFFERTEXTURE3DPROC glad_glFramebufferTexture3D;

typedef void ( * PFNGLFRAMEBUFFERRENDERBUFFERPROC)(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
extern PFNGLFRAMEBUFFERRENDERBUFFERPROC glad_glFramebufferRenderbuffer;

typedef void ( * PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC)(GLenum target, GLenum attachment, GLenum pname, GLint *params);
extern PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC glad_glGetFramebufferAttachmentParameteriv;

typedef void ( * PFNGLGENERATEMIPMAPPROC)(GLenum target);
extern PFNGLGENERATEMIPMAPPROC glad_glGenerateMipmap;

typedef void ( * PFNGLBLITFRAMEBUFFERPROC)(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
extern PFNGLBLITFRAMEBUFFERPROC glad_glBlitFramebuffer;

typedef void ( * PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
extern PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC glad_glRenderbufferStorageMultisample;

typedef void ( * PFNGLFRAMEBUFFERTEXTURELAYERPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
extern PFNGLFRAMEBUFFERTEXTURELAYERPROC glad_glFramebufferTextureLayer;

typedef void * ( * PFNGLMAPBUFFERRANGEPROC)(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access);
extern PFNGLMAPBUFFERRANGEPROC glad_glMapBufferRange;

typedef void ( * PFNGLFLUSHMAPPEDBUFFERRANGEPROC)(GLenum target, GLintptr offset, GLsizeiptr length);
extern PFNGLFLUSHMAPPEDBUFFERRANGEPROC glad_glFlushMappedBufferRange;

typedef void ( * PFNGLBINDVERTEXARRAYPROC)(GLuint array);
extern PFNGLBINDVERTEXARRAYPROC glad_glBindVertexArray;

typedef void ( * PFNGLDELETEVERTEXARRAYSPROC)(GLsizei n, const GLuint *arrays);
extern PFNGLDELETEVERTEXARRAYSPROC glad_glDeleteVertexArrays;

typedef void ( * PFNGLGENVERTEXARRAYSPROC)(GLsizei n, GLuint *arrays);
extern PFNGLGENVERTEXARRAYSPROC glad_glGenVertexArrays;

typedef GLboolean ( * PFNGLISVERTEXARRAYPROC)(GLuint array);
extern PFNGLISVERTEXARRAYPROC glad_glIsVertexArray;




extern int GLAD_GL_VERSION_3_1;
typedef void ( * PFNGLDRAWARRAYSINSTANCEDPROC)(GLenum mode, GLint first, GLsizei count, GLsizei instancecount);
extern PFNGLDRAWARRAYSINSTANCEDPROC glad_glDrawArraysInstanced;

typedef void ( * PFNGLDRAWELEMENTSINSTANCEDPROC)(GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount);
extern PFNGLDRAWELEMENTSINSTANCEDPROC glad_glDrawElementsInstanced;

typedef void ( * PFNGLTEXBUFFERPROC)(GLenum target, GLenum internalformat, GLuint buffer);
extern PFNGLTEXBUFFERPROC glad_glTexBuffer;

typedef void ( * PFNGLPRIMITIVERESTARTINDEXPROC)(GLuint index);
extern PFNGLPRIMITIVERESTARTINDEXPROC glad_glPrimitiveRestartIndex;

typedef void ( * PFNGLCOPYBUFFERSUBDATAPROC)(GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
extern PFNGLCOPYBUFFERSUBDATAPROC glad_glCopyBufferSubData;

typedef void ( * PFNGLGETUNIFORMINDICESPROC)(GLuint program, GLsizei uniformCount, const GLchar *const*uniformNames, GLuint *uniformIndices);
extern PFNGLGETUNIFORMINDICESPROC glad_glGetUniformIndices;

typedef void ( * PFNGLGETACTIVEUNIFORMSIVPROC)(GLuint program, GLsizei uniformCount, const GLuint *uniformIndices, GLenum pname, GLint *params);
extern PFNGLGETACTIVEUNIFORMSIVPROC glad_glGetActiveUniformsiv;

typedef void ( * PFNGLGETACTIVEUNIFORMNAMEPROC)(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformName);
extern PFNGLGETACTIVEUNIFORMNAMEPROC glad_glGetActiveUniformName;

typedef GLuint ( * PFNGLGETUNIFORMBLOCKINDEXPROC)(GLuint program, const GLchar *uniformBlockName);
extern PFNGLGETUNIFORMBLOCKINDEXPROC glad_glGetUniformBlockIndex;

typedef void ( * PFNGLGETACTIVEUNIFORMBLOCKIVPROC)(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint *params);
extern PFNGLGETACTIVEUNIFORMBLOCKIVPROC glad_glGetActiveUniformBlockiv;

typedef void ( * PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC)(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformBlockName);
extern PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC glad_glGetActiveUniformBlockName;

typedef void ( * PFNGLUNIFORMBLOCKBINDINGPROC)(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);
extern PFNGLUNIFORMBLOCKBINDINGPROC glad_glUniformBlockBinding;




extern int GLAD_GL_VERSION_3_2;
typedef void ( * PFNGLDRAWELEMENTSBASEVERTEXPROC)(GLenum mode, GLsizei count, GLenum type, const void *indices, GLint basevertex);
extern PFNGLDRAWELEMENTSBASEVERTEXPROC glad_glDrawElementsBaseVertex;

typedef void ( * PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const void *indices, GLint basevertex);
extern PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC glad_glDrawRangeElementsBaseVertex;

typedef void ( * PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC)(GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLint basevertex);
extern PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC glad_glDrawElementsInstancedBaseVertex;

typedef void ( * PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC)(GLenum mode, const GLsizei *count, GLenum type, const void *const*indices, GLsizei drawcount, const GLint *basevertex);
extern PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC glad_glMultiDrawElementsBaseVertex;

typedef void ( * PFNGLPROVOKINGVERTEXPROC)(GLenum mode);
extern PFNGLPROVOKINGVERTEXPROC glad_glProvokingVertex;

typedef GLsync ( * PFNGLFENCESYNCPROC)(GLenum condition, GLbitfield flags);
extern PFNGLFENCESYNCPROC glad_glFenceSync;

typedef GLboolean ( * PFNGLISSYNCPROC)(GLsync sync);
extern PFNGLISSYNCPROC glad_glIsSync;

typedef void ( * PFNGLDELETESYNCPROC)(GLsync sync);
extern PFNGLDELETESYNCPROC glad_glDeleteSync;

typedef GLenum ( * PFNGLCLIENTWAITSYNCPROC)(GLsync sync, GLbitfield flags, GLuint64 timeout);
extern PFNGLCLIENTWAITSYNCPROC glad_glClientWaitSync;

typedef void ( * PFNGLWAITSYNCPROC)(GLsync sync, GLbitfield flags, GLuint64 timeout);
extern PFNGLWAITSYNCPROC glad_glWaitSync;

typedef void ( * PFNGLGETINTEGER64VPROC)(GLenum pname, GLint64 *data);
extern PFNGLGETINTEGER64VPROC glad_glGetInteger64v;

typedef void ( * PFNGLGETSYNCIVPROC)(GLsync sync, GLenum pname, GLsizei count, GLsizei *length, GLint *values);
extern PFNGLGETSYNCIVPROC glad_glGetSynciv;

typedef void ( * PFNGLGETINTEGER64I_VPROC)(GLenum target, GLuint index, GLint64 *data);
extern PFNGLGETINTEGER64I_VPROC glad_glGetInteger64i_v;

typedef void ( * PFNGLGETBUFFERPARAMETERI64VPROC)(GLenum target, GLenum pname, GLint64 *params);
extern PFNGLGETBUFFERPARAMETERI64VPROC glad_glGetBufferParameteri64v;

typedef void ( * PFNGLFRAMEBUFFERTEXTUREPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level);
extern PFNGLFRAMEBUFFERTEXTUREPROC glad_glFramebufferTexture;

typedef void ( * PFNGLTEXIMAGE2DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
extern PFNGLTEXIMAGE2DMULTISAMPLEPROC glad_glTexImage2DMultisample;

typedef void ( * PFNGLTEXIMAGE3DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
extern PFNGLTEXIMAGE3DMULTISAMPLEPROC glad_glTexImage3DMultisample;

typedef void ( * PFNGLGETMULTISAMPLEFVPROC)(GLenum pname, GLuint index, GLfloat *val);
extern PFNGLGETMULTISAMPLEFVPROC glad_glGetMultisamplefv;

typedef void ( * PFNGLSAMPLEMASKIPROC)(GLuint maskNumber, GLbitfield mask);
extern PFNGLSAMPLEMASKIPROC glad_glSampleMaski;




extern int GLAD_GL_VERSION_3_3;
typedef void ( * PFNGLBINDFRAGDATALOCATIONINDEXEDPROC)(GLuint program, GLuint colorNumber, GLuint index, const GLchar *name);
extern PFNGLBINDFRAGDATALOCATIONINDEXEDPROC glad_glBindFragDataLocationIndexed;

typedef GLint ( * PFNGLGETFRAGDATAINDEXPROC)(GLuint program, const GLchar *name);
extern PFNGLGETFRAGDATAINDEXPROC glad_glGetFragDataIndex;

typedef void ( * PFNGLGENSAMPLERSPROC)(GLsizei count, GLuint *samplers);
extern PFNGLGENSAMPLERSPROC glad_glGenSamplers;

typedef void ( * PFNGLDELETESAMPLERSPROC)(GLsizei count, const GLuint *samplers);
extern PFNGLDELETESAMPLERSPROC glad_glDeleteSamplers;

typedef GLboolean ( * PFNGLISSAMPLERPROC)(GLuint sampler);
extern PFNGLISSAMPLERPROC glad_glIsSampler;

typedef void ( * PFNGLBINDSAMPLERPROC)(GLuint unit, GLuint sampler);
extern PFNGLBINDSAMPLERPROC glad_glBindSampler;

typedef void ( * PFNGLSAMPLERPARAMETERIPROC)(GLuint sampler, GLenum pname, GLint param);
extern PFNGLSAMPLERPARAMETERIPROC glad_glSamplerParameteri;

typedef void ( * PFNGLSAMPLERPARAMETERIVPROC)(GLuint sampler, GLenum pname, const GLint *param);
extern PFNGLSAMPLERPARAMETERIVPROC glad_glSamplerParameteriv;

typedef void ( * PFNGLSAMPLERPARAMETERFPROC)(GLuint sampler, GLenum pname, GLfloat param);
extern PFNGLSAMPLERPARAMETERFPROC glad_glSamplerParameterf;

typedef void ( * PFNGLSAMPLERPARAMETERFVPROC)(GLuint sampler, GLenum pname, const GLfloat *param);
extern PFNGLSAMPLERPARAMETERFVPROC glad_glSamplerParameterfv;

typedef void ( * PFNGLSAMPLERPARAMETERIIVPROC)(GLuint sampler, GLenum pname, const GLint *param);
extern PFNGLSAMPLERPARAMETERIIVPROC glad_glSamplerParameterIiv;

typedef void ( * PFNGLSAMPLERPARAMETERIUIVPROC)(GLuint sampler, GLenum pname, const GLuint *param);
extern PFNGLSAMPLERPARAMETERIUIVPROC glad_glSamplerParameterIuiv;

typedef void ( * PFNGLGETSAMPLERPARAMETERIVPROC)(GLuint sampler, GLenum pname, GLint *params);
extern PFNGLGETSAMPLERPARAMETERIVPROC glad_glGetSamplerParameteriv;

typedef void ( * PFNGLGETSAMPLERPARAMETERIIVPROC)(GLuint sampler, GLenum pname, GLint *params);
extern PFNGLGETSAMPLERPARAMETERIIVPROC glad_glGetSamplerParameterIiv;

typedef void ( * PFNGLGETSAMPLERPARAMETERFVPROC)(GLuint sampler, GLenum pname, GLfloat *params);
extern PFNGLGETSAMPLERPARAMETERFVPROC glad_glGetSamplerParameterfv;

typedef void ( * PFNGLGETSAMPLERPARAMETERIUIVPROC)(GLuint sampler, GLenum pname, GLuint *params);
extern PFNGLGETSAMPLERPARAMETERIUIVPROC glad_glGetSamplerParameterIuiv;

typedef void ( * PFNGLQUERYCOUNTERPROC)(GLuint id, GLenum target);
extern PFNGLQUERYCOUNTERPROC glad_glQueryCounter;

typedef void ( * PFNGLGETQUERYOBJECTI64VPROC)(GLuint id, GLenum pname, GLint64 *params);
extern PFNGLGETQUERYOBJECTI64VPROC glad_glGetQueryObjecti64v;

typedef void ( * PFNGLGETQUERYOBJECTUI64VPROC)(GLuint id, GLenum pname, GLuint64 *params);
extern PFNGLGETQUERYOBJECTUI64VPROC glad_glGetQueryObjectui64v;

typedef void ( * PFNGLVERTEXATTRIBDIVISORPROC)(GLuint index, GLuint divisor);
extern PFNGLVERTEXATTRIBDIVISORPROC glad_glVertexAttribDivisor;

typedef void ( * PFNGLVERTEXATTRIBP1UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value);
extern PFNGLVERTEXATTRIBP1UIPROC glad_glVertexAttribP1ui;

typedef void ( * PFNGLVERTEXATTRIBP1UIVPROC)(GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
extern PFNGLVERTEXATTRIBP1UIVPROC glad_glVertexAttribP1uiv;

typedef void ( * PFNGLVERTEXATTRIBP2UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value);
extern PFNGLVERTEXATTRIBP2UIPROC glad_glVertexAttribP2ui;

typedef void ( * PFNGLVERTEXATTRIBP2UIVPROC)(GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
extern PFNGLVERTEXATTRIBP2UIVPROC glad_glVertexAttribP2uiv;

typedef void ( * PFNGLVERTEXATTRIBP3UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value);
extern PFNGLVERTEXATTRIBP3UIPROC glad_glVertexAttribP3ui;

typedef void ( * PFNGLVERTEXATTRIBP3UIVPROC)(GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
extern PFNGLVERTEXATTRIBP3UIVPROC glad_glVertexAttribP3uiv;

typedef void ( * PFNGLVERTEXATTRIBP4UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value);
extern PFNGLVERTEXATTRIBP4UIPROC glad_glVertexAttribP4ui;

typedef void ( * PFNGLVERTEXATTRIBP4UIVPROC)(GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
extern PFNGLVERTEXATTRIBP4UIVPROC glad_glVertexAttribP4uiv;

typedef void ( * PFNGLVERTEXP2UIPROC)(GLenum type, GLuint value);
extern PFNGLVERTEXP2UIPROC glad_glVertexP2ui;

typedef void ( * PFNGLVERTEXP2UIVPROC)(GLenum type, const GLuint *value);
extern PFNGLVERTEXP2UIVPROC glad_glVertexP2uiv;

typedef void ( * PFNGLVERTEXP3UIPROC)(GLenum type, GLuint value);
extern PFNGLVERTEXP3UIPROC glad_glVertexP3ui;

typedef void ( * PFNGLVERTEXP3UIVPROC)(GLenum type, const GLuint *value);
extern PFNGLVERTEXP3UIVPROC glad_glVertexP3uiv;

typedef void ( * PFNGLVERTEXP4UIPROC)(GLenum type, GLuint value);
extern PFNGLVERTEXP4UIPROC glad_glVertexP4ui;

typedef void ( * PFNGLVERTEXP4UIVPROC)(GLenum type, const GLuint *value);
extern PFNGLVERTEXP4UIVPROC glad_glVertexP4uiv;

typedef void ( * PFNGLTEXCOORDP1UIPROC)(GLenum type, GLuint coords);
extern PFNGLTEXCOORDP1UIPROC glad_glTexCoordP1ui;

typedef void ( * PFNGLTEXCOORDP1UIVPROC)(GLenum type, const GLuint *coords);
extern PFNGLTEXCOORDP1UIVPROC glad_glTexCoordP1uiv;

typedef void ( * PFNGLTEXCOORDP2UIPROC)(GLenum type, GLuint coords);
extern PFNGLTEXCOORDP2UIPROC glad_glTexCoordP2ui;

typedef void ( * PFNGLTEXCOORDP2UIVPROC)(GLenum type, const GLuint *coords);
extern PFNGLTEXCOORDP2UIVPROC glad_glTexCoordP2uiv;

typedef void ( * PFNGLTEXCOORDP3UIPROC)(GLenum type, GLuint coords);
extern PFNGLTEXCOORDP3UIPROC glad_glTexCoordP3ui;

typedef void ( * PFNGLTEXCOORDP3UIVPROC)(GLenum type, const GLuint *coords);
extern PFNGLTEXCOORDP3UIVPROC glad_glTexCoordP3uiv;

typedef void ( * PFNGLTEXCOORDP4UIPROC)(GLenum type, GLuint coords);
extern PFNGLTEXCOORDP4UIPROC glad_glTexCoordP4ui;

typedef void ( * PFNGLTEXCOORDP4UIVPROC)(GLenum type, const GLuint *coords);
extern PFNGLTEXCOORDP4UIVPROC glad_glTexCoordP4uiv;

typedef void ( * PFNGLMULTITEXCOORDP1UIPROC)(GLenum texture, GLenum type, GLuint coords);
extern PFNGLMULTITEXCOORDP1UIPROC glad_glMultiTexCoordP1ui;

typedef void ( * PFNGLMULTITEXCOORDP1UIVPROC)(GLenum texture, GLenum type, const GLuint *coords);
extern PFNGLMULTITEXCOORDP1UIVPROC glad_glMultiTexCoordP1uiv;

typedef void ( * PFNGLMULTITEXCOORDP2UIPROC)(GLenum texture, GLenum type, GLuint coords);
extern PFNGLMULTITEXCOORDP2UIPROC glad_glMultiTexCoordP2ui;

typedef void ( * PFNGLMULTITEXCOORDP2UIVPROC)(GLenum texture, GLenum type, const GLuint *coords);
extern PFNGLMULTITEXCOORDP2UIVPROC glad_glMultiTexCoordP2uiv;

typedef void ( * PFNGLMULTITEXCOORDP3UIPROC)(GLenum texture, GLenum type, GLuint coords);
extern PFNGLMULTITEXCOORDP3UIPROC glad_glMultiTexCoordP3ui;

typedef void ( * PFNGLMULTITEXCOORDP3UIVPROC)(GLenum texture, GLenum type, const GLuint *coords);
extern PFNGLMULTITEXCOORDP3UIVPROC glad_glMultiTexCoordP3uiv;

typedef void ( * PFNGLMULTITEXCOORDP4UIPROC)(GLenum texture, GLenum type, GLuint coords);
extern PFNGLMULTITEXCOORDP4UIPROC glad_glMultiTexCoordP4ui;

typedef void ( * PFNGLMULTITEXCOORDP4UIVPROC)(GLenum texture, GLenum type, const GLuint *coords);
extern PFNGLMULTITEXCOORDP4UIVPROC glad_glMultiTexCoordP4uiv;

typedef void ( * PFNGLNORMALP3UIPROC)(GLenum type, GLuint coords);
extern PFNGLNORMALP3UIPROC glad_glNormalP3ui;

typedef void ( * PFNGLNORMALP3UIVPROC)(GLenum type, const GLuint *coords);
extern PFNGLNORMALP3UIVPROC glad_glNormalP3uiv;

typedef void ( * PFNGLCOLORP3UIPROC)(GLenum type, GLuint color);
extern PFNGLCOLORP3UIPROC glad_glColorP3ui;

typedef void ( * PFNGLCOLORP3UIVPROC)(GLenum type, const GLuint *color);
extern PFNGLCOLORP3UIVPROC glad_glColorP3uiv;

typedef void ( * PFNGLCOLORP4UIPROC)(GLenum type, GLuint color);
extern PFNGLCOLORP4UIPROC glad_glColorP4ui;

typedef void ( * PFNGLCOLORP4UIVPROC)(GLenum type, const GLuint *color);
extern PFNGLCOLORP4UIVPROC glad_glColorP4uiv;

typedef void ( * PFNGLSECONDARYCOLORP3UIPROC)(GLenum type, GLuint color);
extern PFNGLSECONDARYCOLORP3UIPROC glad_glSecondaryColorP3ui;

typedef void ( * PFNGLSECONDARYCOLORP3UIVPROC)(GLenum type, const GLuint *color);
extern PFNGLSECONDARYCOLORP3UIVPROC glad_glSecondaryColorP3uiv;




extern int GLAD_GL_VERSION_4_0;
typedef void ( * PFNGLMINSAMPLESHADINGPROC)(GLfloat value);
extern PFNGLMINSAMPLESHADINGPROC glad_glMinSampleShading;

typedef void ( * PFNGLBLENDEQUATIONIPROC)(GLuint buf, GLenum mode);
extern PFNGLBLENDEQUATIONIPROC glad_glBlendEquationi;

typedef void ( * PFNGLBLENDEQUATIONSEPARATEIPROC)(GLuint buf, GLenum modeRGB, GLenum modeAlpha);
extern PFNGLBLENDEQUATIONSEPARATEIPROC glad_glBlendEquationSeparatei;

typedef void ( * PFNGLBLENDFUNCIPROC)(GLuint buf, GLenum src, GLenum dst);
extern PFNGLBLENDFUNCIPROC glad_glBlendFunci;

typedef void ( * PFNGLBLENDFUNCSEPARATEIPROC)(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
extern PFNGLBLENDFUNCSEPARATEIPROC glad_glBlendFuncSeparatei;

typedef void ( * PFNGLDRAWARRAYSINDIRECTPROC)(GLenum mode, const void *indirect);
extern PFNGLDRAWARRAYSINDIRECTPROC glad_glDrawArraysIndirect;

typedef void ( * PFNGLDRAWELEMENTSINDIRECTPROC)(GLenum mode, GLenum type, const void *indirect);
extern PFNGLDRAWELEMENTSINDIRECTPROC glad_glDrawElementsIndirect;

typedef void ( * PFNGLUNIFORM1DPROC)(GLint location, GLdouble x);
extern PFNGLUNIFORM1DPROC glad_glUniform1d;

typedef void ( * PFNGLUNIFORM2DPROC)(GLint location, GLdouble x, GLdouble y);
extern PFNGLUNIFORM2DPROC glad_glUniform2d;

typedef void ( * PFNGLUNIFORM3DPROC)(GLint location, GLdouble x, GLdouble y, GLdouble z);
extern PFNGLUNIFORM3DPROC glad_glUniform3d;

typedef void ( * PFNGLUNIFORM4DPROC)(GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
extern PFNGLUNIFORM4DPROC glad_glUniform4d;

typedef void ( * PFNGLUNIFORM1DVPROC)(GLint location, GLsizei count, const GLdouble *value);
extern PFNGLUNIFORM1DVPROC glad_glUniform1dv;

typedef void ( * PFNGLUNIFORM2DVPROC)(GLint location, GLsizei count, const GLdouble *value);
extern PFNGLUNIFORM2DVPROC glad_glUniform2dv;

typedef void ( * PFNGLUNIFORM3DVPROC)(GLint location, GLsizei count, const GLdouble *value);
extern PFNGLUNIFORM3DVPROC glad_glUniform3dv;

typedef void ( * PFNGLUNIFORM4DVPROC)(GLint location, GLsizei count, const GLdouble *value);
extern PFNGLUNIFORM4DVPROC glad_glUniform4dv;

typedef void ( * PFNGLUNIFORMMATRIX2DVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
extern PFNGLUNIFORMMATRIX2DVPROC glad_glUniformMatrix2dv;

typedef void ( * PFNGLUNIFORMMATRIX3DVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
extern PFNGLUNIFORMMATRIX3DVPROC glad_glUniformMatrix3dv;

typedef void ( * PFNGLUNIFORMMATRIX4DVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
extern PFNGLUNIFORMMATRIX4DVPROC glad_glUniformMatrix4dv;

typedef void ( * PFNGLUNIFORMMATRIX2X3DVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
extern PFNGLUNIFORMMATRIX2X3DVPROC glad_glUniformMatrix2x3dv;

typedef void ( * PFNGLUNIFORMMATRIX2X4DVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
extern PFNGLUNIFORMMATRIX2X4DVPROC glad_glUniformMatrix2x4dv;

typedef void ( * PFNGLUNIFORMMATRIX3X2DVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
extern PFNGLUNIFORMMATRIX3X2DVPROC glad_glUniformMatrix3x2dv;

typedef void ( * PFNGLUNIFORMMATRIX3X4DVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
extern PFNGLUNIFORMMATRIX3X4DVPROC glad_glUniformMatrix3x4dv;

typedef void ( * PFNGLUNIFORMMATRIX4X2DVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
extern PFNGLUNIFORMMATRIX4X2DVPROC glad_glUniformMatrix4x2dv;

typedef void ( * PFNGLUNIFORMMATRIX4X3DVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
extern PFNGLUNIFORMMATRIX4X3DVPROC glad_glUniformMatrix4x3dv;

typedef void ( * PFNGLGETUNIFORMDVPROC)(GLuint program, GLint location, GLdouble *params);
extern PFNGLGETUNIFORMDVPROC glad_glGetUniformdv;

typedef GLint ( * PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC)(GLuint program, GLenum shadertype, const GLchar *name);
extern PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC glad_glGetSubroutineUniformLocation;

typedef GLuint ( * PFNGLGETSUBROUTINEINDEXPROC)(GLuint program, GLenum shadertype, const GLchar *name);
extern PFNGLGETSUBROUTINEINDEXPROC glad_glGetSubroutineIndex;

typedef void ( * PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC)(GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint *values);
extern PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC glad_glGetActiveSubroutineUniformiv;

typedef void ( * PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC)(GLuint program, GLenum shadertype, GLuint index, GLsizei bufSize, GLsizei *length, GLchar *name);
extern PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC glad_glGetActiveSubroutineUniformName;

typedef void ( * PFNGLGETACTIVESUBROUTINENAMEPROC)(GLuint program, GLenum shadertype, GLuint index, GLsizei bufSize, GLsizei *length, GLchar *name);
extern PFNGLGETACTIVESUBROUTINENAMEPROC glad_glGetActiveSubroutineName;

typedef void ( * PFNGLUNIFORMSUBROUTINESUIVPROC)(GLenum shadertype, GLsizei count, const GLuint *indices);
extern PFNGLUNIFORMSUBROUTINESUIVPROC glad_glUniformSubroutinesuiv;

typedef void ( * PFNGLGETUNIFORMSUBROUTINEUIVPROC)(GLenum shadertype, GLint location, GLuint *params);
extern PFNGLGETUNIFORMSUBROUTINEUIVPROC glad_glGetUniformSubroutineuiv;

typedef void ( * PFNGLGETPROGRAMSTAGEIVPROC)(GLuint program, GLenum shadertype, GLenum pname, GLint *values);
extern PFNGLGETPROGRAMSTAGEIVPROC glad_glGetProgramStageiv;

typedef void ( * PFNGLPATCHPARAMETERIPROC)(GLenum pname, GLint value);
extern PFNGLPATCHPARAMETERIPROC glad_glPatchParameteri;

typedef void ( * PFNGLPATCHPARAMETERFVPROC)(GLenum pname, const GLfloat *values);
extern PFNGLPATCHPARAMETERFVPROC glad_glPatchParameterfv;

typedef void ( * PFNGLBINDTRANSFORMFEEDBACKPROC)(GLenum target, GLuint id);
extern PFNGLBINDTRANSFORMFEEDBACKPROC glad_glBindTransformFeedback;

typedef void ( * PFNGLDELETETRANSFORMFEEDBACKSPROC)(GLsizei n, const GLuint *ids);
extern PFNGLDELETETRANSFORMFEEDBACKSPROC glad_glDeleteTransformFeedbacks;

typedef void ( * PFNGLGENTRANSFORMFEEDBACKSPROC)(GLsizei n, GLuint *ids);
extern PFNGLGENTRANSFORMFEEDBACKSPROC glad_glGenTransformFeedbacks;

typedef GLboolean ( * PFNGLISTRANSFORMFEEDBACKPROC)(GLuint id);
extern PFNGLISTRANSFORMFEEDBACKPROC glad_glIsTransformFeedback;

typedef void ( * PFNGLPAUSETRANSFORMFEEDBACKPROC)(void);
extern PFNGLPAUSETRANSFORMFEEDBACKPROC glad_glPauseTransformFeedback;

typedef void ( * PFNGLRESUMETRANSFORMFEEDBACKPROC)(void);
extern PFNGLRESUMETRANSFORMFEEDBACKPROC glad_glResumeTransformFeedback;

typedef void ( * PFNGLDRAWTRANSFORMFEEDBACKPROC)(GLenum mode, GLuint id);
extern PFNGLDRAWTRANSFORMFEEDBACKPROC glad_glDrawTransformFeedback;

typedef void ( * PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC)(GLenum mode, GLuint id, GLuint stream);
extern PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC glad_glDrawTransformFeedbackStream;

typedef void ( * PFNGLBEGINQUERYINDEXEDPROC)(GLenum target, GLuint index, GLuint id);
extern PFNGLBEGINQUERYINDEXEDPROC glad_glBeginQueryIndexed;

typedef void ( * PFNGLENDQUERYINDEXEDPROC)(GLenum target, GLuint index);
extern PFNGLENDQUERYINDEXEDPROC glad_glEndQueryIndexed;

typedef void ( * PFNGLGETQUERYINDEXEDIVPROC)(GLenum target, GLuint index, GLenum pname, GLint *params);
extern PFNGLGETQUERYINDEXEDIVPROC glad_glGetQueryIndexediv;




}
# 9 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/src/app.h" 2
# 1 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h" 1
# 33 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
extern "C" {
# 103 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stddef.h" 1 3 4
# 145 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stddef.h" 3 4

# 145 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 214 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 425 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 436 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stddef.h" 3 4
} max_align_t;






  typedef decltype(nullptr) nullptr_t;
# 104 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h" 2
# 1365 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"

# 1365 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (*GLFWglproc)(void);
# 1379 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (*GLFWvkproc)(void);
# 1391 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef struct GLFWmonitor GLFWmonitor;
# 1403 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef struct GLFWwindow GLFWwindow;
# 1415 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef struct GLFWcursor GLFWcursor;
# 1468 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void* (* GLFWallocatefun)(size_t size, void* user);
# 1524 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void* (* GLFWreallocatefun)(void* block, size_t size, void* user);
# 1566 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWdeallocatefun)(void* block, void* user);
# 1590 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWerrorfun)(int error_code, const char* description);
# 1613 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWwindowposfun)(GLFWwindow* window, int xpos, int ypos);
# 1635 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWwindowsizefun)(GLFWwindow* window, int width, int height);
# 1655 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWwindowclosefun)(GLFWwindow* window);
# 1675 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWwindowrefreshfun)(GLFWwindow* window);
# 1696 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWwindowfocusfun)(GLFWwindow* window, int focused);
# 1717 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWwindowiconifyfun)(GLFWwindow* window, int iconified);
# 1738 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWwindowmaximizefun)(GLFWwindow* window, int maximized);
# 1759 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWframebuffersizefun)(GLFWwindow* window, int width, int height);
# 1780 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWwindowcontentscalefun)(GLFWwindow* window, float xscale, float yscale);
# 1806 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWmousebuttonfun)(GLFWwindow* window, int button, int action, int mods);
# 1829 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWcursorposfun)(GLFWwindow* window, double xpos, double ypos);
# 1850 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWcursorenterfun)(GLFWwindow* window, int entered);
# 1871 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWscrollfun)(GLFWwindow* window, double xoffset, double yoffset);
# 1897 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWkeyfun)(GLFWwindow* window, int key, int scancode, int action, int mods);
# 1918 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWcharfun)(GLFWwindow* window, unsigned int codepoint);
# 1945 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWcharmodsfun)(GLFWwindow* window, unsigned int codepoint, int mods);
# 1969 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWdropfun)(GLFWwindow* window, int path_count, const char* paths[]);
# 1990 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWmonitorfun)(GLFWmonitor* monitor, int event);
# 2011 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef void (* GLFWjoystickfun)(int jid, int event);
# 2026 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef struct GLFWvidmode
{


    int width;


    int height;


    int redBits;


    int greenBits;


    int blueBits;


    int refreshRate;
} GLFWvidmode;
# 2060 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef struct GLFWgammaramp
{


    unsigned short* red;


    unsigned short* green;


    unsigned short* blue;


    unsigned int size;
} GLFWgammaramp;
# 2089 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef struct GLFWimage
{


    int width;


    int height;


    unsigned char* pixels;
} GLFWimage;
# 2113 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef struct GLFWgamepadstate
{



    unsigned char buttons[15];



    float axes[6];
} GLFWgamepadstate;
# 2137 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
typedef struct GLFWallocator
{



    GLFWallocatefun allocate;



    GLFWreallocatefun reallocate;



    GLFWdeallocatefun deallocate;



    void* user;
} GLFWallocator;
# 2220 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwInit(void);
# 2254 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwTerminate(void);
# 2286 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwInitHint(int hint, int value);
# 2317 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwInitAllocator(const GLFWallocator* allocator);
# 2392 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetVersion(int* major, int* minor, int* rev);
# 2426 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const char* glfwGetVersionString(void);
# 2457 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwGetError(const char** description);
# 2503 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWerrorfun glfwSetErrorCallback(GLFWerrorfun callback);
# 2524 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwGetPlatform(void);
# 2548 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwPlatformSupported(int platform);
# 2577 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWmonitor** glfwGetMonitors(int* count);
# 2601 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWmonitor* glfwGetPrimaryMonitor(void);
# 2626 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetMonitorPos(GLFWmonitor* monitor, int* xpos, int* ypos);
# 2657 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetMonitorWorkarea(GLFWmonitor* monitor, int* xpos, int* ypos, int* width, int* height);
# 2692 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetMonitorPhysicalSize(GLFWmonitor* monitor, int* widthMM, int* heightMM);
# 2727 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetMonitorContentScale(GLFWmonitor* monitor, float* xscale, float* yscale);
# 2753 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const char* glfwGetMonitorName(GLFWmonitor* monitor);
# 2779 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetMonitorUserPointer(GLFWmonitor* monitor, void* pointer);
# 2803 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void* glfwGetMonitorUserPointer(GLFWmonitor* monitor);
# 2833 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWmonitorfun glfwSetMonitorCallback(GLFWmonitorfun callback);
# 2867 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const GLFWvidmode* glfwGetVideoModes(GLFWmonitor* monitor, int* count);
# 2895 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const GLFWvidmode* glfwGetVideoMode(GLFWmonitor* monitor);
# 2928 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetGamma(GLFWmonitor* monitor, float gamma);
# 2958 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const GLFWgammaramp* glfwGetGammaRamp(GLFWmonitor* monitor);
# 2999 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetGammaRamp(GLFWmonitor* monitor, const GLFWgammaramp* ramp);
# 3018 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwDefaultWindowHints(void);
# 3053 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwWindowHint(int hint, int value);
# 3091 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwWindowHintString(int hint, const char* value);
# 3235 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWwindow* glfwCreateWindow(int width, int height, const char* title, GLFWmonitor* monitor, GLFWwindow* share);
# 3264 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwDestroyWindow(GLFWwindow* window);
# 3284 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwWindowShouldClose(GLFWwindow* window);
# 3306 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowShouldClose(GLFWwindow* window, int value);
# 3338 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const char* glfwGetWindowTitle(GLFWwindow* window);
# 3364 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowTitle(GLFWwindow* window, const char* title);
# 3413 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowIcon(GLFWwindow* window, int count, const GLFWimage* images);
# 3445 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetWindowPos(GLFWwindow* window, int* xpos, int* ypos);
# 3480 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowPos(GLFWwindow* window, int xpos, int ypos);
# 3510 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetWindowSize(GLFWwindow* window, int* width, int* height);
# 3553 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowSizeLimits(GLFWwindow* window, int minwidth, int minheight, int maxwidth, int maxheight);
# 3596 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowAspectRatio(GLFWwindow* window, int numer, int denom);
# 3634 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowSize(GLFWwindow* window, int width, int height);
# 3663 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetFramebufferSize(GLFWwindow* window, int* width, int* height);
# 3700 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetWindowFrameSize(GLFWwindow* window, int* left, int* top, int* right, int* bottom);
# 3733 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetWindowContentScale(GLFWwindow* window, float* xscale, float* yscale);
# 3760 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 float glfwGetWindowOpacity(GLFWwindow* window);
# 3792 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowOpacity(GLFWwindow* window, float opacity);
# 3824 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwIconifyWindow(GLFWwindow* window);
# 3851 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwRestoreWindow(GLFWwindow* window);
# 3876 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwMaximizeWindow(GLFWwindow* window);
# 3908 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwShowWindow(GLFWwindow* window);
# 3930 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwHideWindow(GLFWwindow* window);
# 3969 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwFocusWindow(GLFWwindow* window);
# 3996 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwRequestWindowAttention(GLFWwindow* window);
# 4018 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWmonitor* glfwGetWindowMonitor(GLFWwindow* window);
# 4074 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowMonitor(GLFWwindow* window, GLFWmonitor* monitor, int xpos, int ypos, int width, int height, int refreshRate);
# 4111 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwGetWindowAttrib(GLFWwindow* window, int attrib);
# 4153 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowAttrib(GLFWwindow* window, int attrib, int value);
# 4176 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetWindowUserPointer(GLFWwindow* window, void* pointer);
# 4197 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void* glfwGetWindowUserPointer(GLFWwindow* window);
# 4232 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWwindowposfun glfwSetWindowPosCallback(GLFWwindow* window, GLFWwindowposfun callback);
# 4264 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWwindowsizefun glfwSetWindowSizeCallback(GLFWwindow* window, GLFWwindowsizefun callback);
# 4304 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWwindowclosefun glfwSetWindowCloseCallback(GLFWwindow* window, GLFWwindowclosefun callback);
# 4340 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWwindowrefreshfun glfwSetWindowRefreshCallback(GLFWwindow* window, GLFWwindowrefreshfun callback);
# 4375 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWwindowfocusfun glfwSetWindowFocusCallback(GLFWwindow* window, GLFWwindowfocusfun callback);
# 4405 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWwindowiconifyfun glfwSetWindowIconifyCallback(GLFWwindow* window, GLFWwindowiconifyfun callback);
# 4435 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWwindowmaximizefun glfwSetWindowMaximizeCallback(GLFWwindow* window, GLFWwindowmaximizefun callback);
# 4465 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWframebuffersizefun glfwSetFramebufferSizeCallback(GLFWwindow* window, GLFWframebuffersizefun callback);
# 4496 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWwindowcontentscalefun glfwSetWindowContentScaleCallback(GLFWwindow* window, GLFWwindowcontentscalefun callback);
# 4534 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwPollEvents(void);
# 4579 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwWaitEvents(void);
# 4628 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwWaitEventsTimeout(double timeout);
# 4648 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwPostEmptyEvent(void);
# 4673 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwGetInputMode(GLFWwindow* window, int mode);
# 4738 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetInputMode(GLFWwindow* window, int mode, int value);
# 4767 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwRawMouseMotionSupported(void);
# 4835 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const char* glfwGetKeyName(int key, int scancode);
# 4862 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwGetKeyScancode(int key);
# 4901 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwGetKey(GLFWwindow* window, int key);
# 4930 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwGetMouseButton(GLFWwindow* window, int button);
# 4968 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwGetCursorPos(GLFWwindow* window, double* xpos, double* ypos);
# 5008 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetCursorPos(GLFWwindow* window, double xpos, double ypos);
# 5046 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWcursor* glfwCreateCursor(const GLFWimage* image, int xhot, int yhot);
# 5094 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWcursor* glfwCreateStandardCursor(int shape);
# 5121 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwDestroyCursor(GLFWcursor* cursor);
# 5148 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetCursor(GLFWwindow* window, GLFWcursor* cursor);
# 5198 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWkeyfun glfwSetKeyCallback(GLFWwindow* window, GLFWkeyfun callback);
# 5241 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWcharfun glfwSetCharCallback(GLFWwindow* window, GLFWcharfun callback);
# 5283 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWcharmodsfun glfwSetCharModsCallback(GLFWwindow* window, GLFWcharmodsfun callback);
# 5320 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWmousebuttonfun glfwSetMouseButtonCallback(GLFWwindow* window, GLFWmousebuttonfun callback);
# 5352 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWcursorposfun glfwSetCursorPosCallback(GLFWwindow* window, GLFWcursorposfun callback);
# 5383 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWcursorenterfun glfwSetCursorEnterCallback(GLFWwindow* window, GLFWcursorenterfun callback);
# 5417 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWscrollfun glfwSetScrollCallback(GLFWwindow* window, GLFWscrollfun callback);
# 5452 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWdropfun glfwSetDropCallback(GLFWwindow* window, GLFWdropfun callback);
# 5476 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwJoystickPresent(int jid);
# 5509 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const float* glfwGetJoystickAxes(int jid, int* count);
# 5550 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const unsigned char* glfwGetJoystickButtons(int jid, int* count);
# 5607 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const unsigned char* glfwGetJoystickHats(int jid, int* count);
# 5638 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const char* glfwGetJoystickName(int jid);
# 5679 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const char* glfwGetJoystickGUID(int jid);
# 5705 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetJoystickUserPointer(int jid, void* pointer);
# 5729 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void* glfwGetJoystickUserPointer(int jid);
# 5757 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwJoystickIsGamepad(int jid);
# 5793 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWjoystickfun glfwSetJoystickCallback(GLFWjoystickfun callback);
# 5827 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwUpdateGamepadMappings(const char* string);
# 5859 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const char* glfwGetGamepadName(int jid);
# 5897 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwGetGamepadState(int jid, GLFWgamepadstate* state);
# 5927 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetClipboardString(GLFWwindow* window, const char* string);
# 5962 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const char* glfwGetClipboardString(GLFWwindow* window);
# 5992 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 double glfwGetTime(void);
# 6022 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSetTime(double time);
# 6044 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 uint64_t glfwGetTimerValue(void);
# 6064 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 uint64_t glfwGetTimerFrequency(void);
# 6109 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwMakeContextCurrent(GLFWwindow* window);
# 6130 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWwindow* glfwGetCurrentContext(void);
# 6164 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSwapBuffers(GLFWwindow* window);
# 6210 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 void glfwSwapInterval(int interval);
# 6248 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwExtensionSupported(const char* extension);
# 6290 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 GLFWglproc glfwGetProcAddress(const char* procname);
# 6316 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 int glfwVulkanSupported(void);
# 6360 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
 const char** glfwGetRequiredInstanceExtensions(uint32_t* count);
# 6543 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/include/GLFW/glfw3.h"
}
# 10 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/src/app.h" 2

class App {

};
# 6 "/home/jenskromdijk3/CLionProjects/OpenGL Renderer/src/app.cpp" 2
