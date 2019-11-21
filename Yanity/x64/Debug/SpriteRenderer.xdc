<?xml version="1.0"?><doc>
<members>
<member name="M:SDL_GetPlatform" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="22">
  \file SDL_stdinc.h

  This is a general header that includes C language support.

  \file SDL_platform.h

  Try to get a standard set of platform defines.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

\brief Gets the name of the platform.

</member>
<member name="D:int8_t" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

</member>
<member name="D:Sint8" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="168">
\brief A signed 8-bit integer type.

</member>
<member name="D:Uint8" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="174">
\brief An unsigned 8-bit integer type.

</member>
<member name="D:Sint16" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="180">
\brief A signed 16-bit integer type.

</member>
<member name="D:Uint16" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="186">
\brief An unsigned 16-bit integer type.

</member>
<member name="D:Sint32" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="192">
\brief A signed 32-bit integer type.

</member>
<member name="D:Uint32" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="198">
\brief An unsigned 32-bit integer type.

</member>
<member name="D:Sint64" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="205">
\brief A signed 64-bit integer type.

</member>
<member name="D:Uint64" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="211">
\brief An unsigned 64-bit integer type.

</member>
<member name="D:SDL_compile_time_assert_uint8" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="314">
\cond 
</member>
<member name="M:SDL_malloc(System.UInt64)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="345">
\endcond 
  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="M:SDL_GetMemoryFunctions(=FUNC:System.Void*(System.UInt64)*,=FUNC:System.Void*(System.UInt64,System.UInt64)*,=FUNC:System.Void*(System.Void*,System.UInt64)*,=FUNC:System.Void(System.Void*)*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="371">
\brief Get the current set of SDL memory functions

</member>
<member name="M:SDL_SetMemoryFunctions(=FUNC:System.Void*(System.UInt64),=FUNC:System.Void*(System.UInt64,System.UInt64),=FUNC:System.Void*(System.Void*,System.UInt64),=FUNC:System.Void(System.Void*))" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="379">
  \brief Replace SDL's memory allocation functions with a custom set

  \note If you are replacing SDL's memory functions, you should call
        SDL_GetNumAllocations() and be very careful if it returns non-zero.
        That means that your free function will be called with memory
        allocated by the previous memory allocation functions.

</member>
<member name="M:SDL_GetNumAllocations" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="392">
\brief Get the number of outstanding (unfreed) allocations

</member>
<member name="M:SDL_iconv_string(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt64)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_stdinc.h" line="554">
This function converts a string between encodings in one pass, returning a
string that must be freed with SDL_free() or NULL on error.

</member>
<member name="D:SDL_main_func" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_main.h

  Redefine main() on some platforms so that it is called by SDL.

  \file SDL_main.h

  The application's main() function must be called with C linkage,
  and should be declared like this:
  \code
  #ifdef __cplusplus
  extern "C"
  #endif
  int main(int argc, char *argv[])
  {
  }
  \endcode

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

The prototype for the application's main() function

</member>
<member name="M:SDL_SetMainReady" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_main.h" line="124">
  This is called by the real SDL main function to let the rest of the
  library know that initialization was done properly.

  Calling this yourself without knowing what you're doing can cause
  crashes and hard to diagnose problems with your application.

</member>
<member name="M:SDL_RegisterApp(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.UInt32,System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_main.h" line="135">
This can be called to set the application class at startup

</member>
<member name="F:__debugbreak" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="M:SDL_SetAssertionHandler(=FUNC:SDL_AssertState(SDL_AssertData!System.Runtime.CompilerServices.IsConst*,System.Void*),System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_assert.h" line="191">
  \brief Set an application-defined assertion handler.

  This allows an app to show its own assertion UI and/or force the
  response to an assertion failure. If the app doesn't provide this, SDL
  will try to do the right thing, popping up a system-specific GUI dialog,
  and probably minimizing any fullscreen windows.

  This callback may fire from any thread, but it runs wrapped in a mutex, so
  it will only fire from one thread at a time.

  Setting the callback to NULL restores SDL's original internal handler.

  This callback is NOT reset to SDL's internal handler upon SDL_Quit()!

  Return SDL_AssertState value of how to handle the assertion failure.

  \param handler Callback function, called when an assertion fails.
  \param userdata A pointer passed to the callback as-is.

</member>
<member name="M:SDL_GetDefaultAssertionHandler" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_assert.h" line="215">
  \brief Get the default assertion handler.

  This returns the function pointer that is called by default when an
   assertion is triggered. This is an internal function provided by SDL,
   that is used for assertions when SDL_SetAssertionHandler() hasn't been
   used to provide a different function.

  \return The default SDL_AssertionHandler that is called when an assert triggers.

</member>
<member name="M:SDL_GetAssertionHandler(System.Void**)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_assert.h" line="227">
  \brief Get the current assertion handler.

  This returns the function pointer that is called when an assertion is
   triggered. This is either the value last passed to
   SDL_SetAssertionHandler(), or if no application-specified function is
   set, is equivalent to calling SDL_GetDefaultAssertionHandler().

   \param puserdata Pointer to a void*, which will store the "userdata"
                    pointer that was passed to SDL_SetAssertionHandler().
                    This value will always be NULL for the default handler.
                    If you don't care about this data, it is safe to pass
                    a NULL pointer to this function to ignore it.
  \return The SDL_AssertionHandler that is called when an assert triggers.

</member>
<member name="M:SDL_GetAssertionReport" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_assert.h" line="244">
  \brief Get a list of all assertion failures.

  Get all assertions triggered since last call to SDL_ResetAssertionReport(),
  or the start of the program.

  The proper way to examine this data looks something like this:

  <code>
  const SDL_AssertData *item = SDL_GetAssertionReport();
  while (item) {
      printf("'%s', %s (%s:%d), triggered %u times, always ignore: %s.\\n",
             item-&gt;condition, item-&gt;function, item-&gt;filename,
             item-&gt;linenum, item-&gt;trigger_count,
             item-&gt;always_ignore ? "yes" : "no");
      item = item-&gt;next;
  }
  </code>

  \return List of all assertions.
  \sa SDL_ResetAssertionReport

</member>
<member name="M:SDL_ResetAssertionReport" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_assert.h" line="268">
  \brief Reset the list of all assertion failures.

  Reset list of all assertions triggered.

  \sa SDL_GetAssertionReport

</member>
<member name="D:SDL_SpinLock" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

 \file SDL_atomic.h

 Atomic operations.

 IMPORTANT:
 If you are not an expert in concurrent lockless programming, you should
 only be using the atomic lock and reference counting functions in this
 file.  In all other cases you should be protecting your data structures
 with full mutexes.

 The list of "safe" functions to use are:
  SDL_AtomicLock()
  SDL_AtomicUnlock()
  SDL_AtomicIncRef()
  SDL_AtomicDecRef()

 Seriously, here be dragons!
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^

 You can find out a little more about lockless programming and the
 subtle issues that can arise here:
 http://msdn.microsoft.com/en-us/library/ee418650%28v=vs.85%29.aspx

 There's also lots of good information here:
 http://www.1024cores.net/home/lock-free-algorithms
 http://preshing.com/

 These operations may or may not actually be implemented using
 processor specific atomic operations. When possible they are
 implemented as true processor specific atomic operations. When that
 is not possible the are implemented using locks that *do* use the
 available atomic operations.

 All of the atomic operations that modify memory are full memory barriers.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

 \name SDL AtomicLock

 The atomic locks are efficient spinlocks using CPU instructions,
 but are vulnerable to starvation and can spin forever if a thread
 holding a lock has been terminated.  For this reason you should
 minimize the code executed inside an atomic lock and never do
 expensive things like API or system calls while holding them.

 The atomic locks are not safe to lock recursively.

 Porting Note:
 The spin lock functions and type are required and can not be
 emulated because they are used in the atomic emulation code.

</member>
<member name="M:SDL_AtomicTryLock(System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="91">
 \brief Try to lock a spin lock by setting it to a non-zero value.

 \param lock Points to the lock.

 \return SDL_TRUE if the lock succeeded, SDL_FALSE if the lock is already held.

</member>
<member name="M:SDL_AtomicLock(System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="100">
 \brief Lock a spin lock by setting it to a non-zero value.

 \param lock Points to the lock.

</member>
<member name="M:SDL_AtomicUnlock(System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="107">
 \brief Unlock a spin lock by setting it to 0. Always returns immediately

 \param lock Points to the lock.

</member>
<member name="F:_ReadWriteBarrier" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="117">
The compiler barrier prevents the compiler from reordering
reads and writes to globally visible variables across the call.

</member>
<member name="M:SDL_MemoryBarrierReleaseFunction" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="136">
 Memory barriers are designed to prevent reads and writes from being
 reordered by the compiler and being seen out of order on multi-core CPUs.

 A typical pattern would be for thread A to write some data and a flag,
 and for thread B to read the flag and get the data. In this case you
 would insert a release barrier between writing the data and the flag,
 guaranteeing that the data write completes no later than the flag is
 written, and you would insert an acquire barrier between reading the
 flag and reading the data, to ensure that all the reads associated
 with the flag have completed.

 In this pattern you should always see a release barrier paired with
 an acquire barrier and you should gate the data reads/writes with a
 single flag variable.

 For more information on these semantics, take a look at the blog post:
 http://preshing.com/20120913/acquire-and-release-semantics

</member>
<member name="M:SDL_AtomicCAS(SDL_atomic_t*,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="218">
 \brief Set an atomic variable to a new value if it is currently an old value.

 \return SDL_TRUE if the atomic variable was set, SDL_FALSE otherwise.

 \note If you don't know what this function is for, you shouldn't use it!

</member>
<member name="M:SDL_AtomicSet(SDL_atomic_t*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="227">
 \brief Set an atomic variable to a value.

 \return The previous value of the atomic variable.

</member>
<member name="M:SDL_AtomicGet(SDL_atomic_t*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="234">
\brief Get the value of an atomic variable

</member>
<member name="M:SDL_AtomicAdd(SDL_atomic_t*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="239">
 \brief Add to an atomic variable.

 \return The previous value of the atomic variable.

 \note This same style can be used for any number operation

</member>
<member name="M:SDL_AtomicCASPtr(System.Void**,System.Void*,System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="248">
\brief Increment an atomic variable used as a reference count.

 \brief Decrement an atomic variable used as a reference count.

 \return SDL_TRUE if the variable reached zero after decrementing,
         SDL_FALSE otherwise

 \brief Set a pointer to a new value if it is currently an old value.

 \return SDL_TRUE if the pointer was set, SDL_FALSE otherwise.

 \note If you don't know what this function is for, you shouldn't use it!

</member>
<member name="M:SDL_AtomicSetPtr(System.Void**,System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="274">
 \brief Set a pointer to a value atomically.

 \return The previous value of the pointer.

</member>
<member name="M:SDL_AtomicGetPtr(System.Void**)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_atomic.h" line="281">
\brief Get the value of a pointer atomically.

</member>
<member name="M:SDL_SetError(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_audio.h

  Access to the raw audio mixing buffer for the SDL library.

  \file SDL_error.h

  Simple error message routines for SDL.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="M:SDL_Swap16(System.UInt16)" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_endian.h

  Functions for reading and writing endian-specific values

\name The two types of endianness

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

\file SDL_endian.h

</member>
<member name="T:SDL_mutex" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_mutex.h

  Functions to provide thread synchronization primitives.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

Synchronization functions which can time out return this value
if they time out.

This is the timeout value which corresponds to never time out.

\name Mutex functions

</member>
<member name="M:SDL_CreateMutex" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="61">
Create a mutex, initialized unlocked.

</member>
<member name="M:SDL_LockMutex(SDL_mutex*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="66">
  Lock the mutex.

  \return 0, or -1 on error.

</member>
<member name="M:SDL_TryLockMutex(SDL_mutex*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="74">
  Try to lock the mutex

  \return 0, SDL_MUTEX_TIMEDOUT, or -1 on error

</member>
<member name="M:SDL_UnlockMutex(SDL_mutex*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="81">
  Unlock the mutex.

  \return 0, or -1 on error.

  \warning It is an error to unlock a mutex that has not been locked by
           the current thread, and doing so results in undefined behavior.

</member>
<member name="M:SDL_DestroyMutex(SDL_mutex*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="92">
Destroy a mutex.

</member>
<member name="T:SDL_semaphore" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="100">
\name Semaphore functions

</member>
<member name="M:SDL_CreateSemaphore(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="109">
Create a semaphore, initialized with value, returns NULL on failure.

</member>
<member name="M:SDL_DestroySemaphore(SDL_semaphore*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="114">
Destroy a semaphore.

</member>
<member name="M:SDL_SemWait(SDL_semaphore*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="119">
This function suspends the calling thread until the semaphore pointed
to by \c sem has a positive count. It then atomically decreases the
semaphore count.

</member>
<member name="M:SDL_SemTryWait(SDL_semaphore*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="126">
  Non-blocking variant of SDL_SemWait().

  \return 0 if the wait succeeds, ::SDL_MUTEX_TIMEDOUT if the wait would
          block, and -1 on error.

</member>
<member name="M:SDL_SemWaitTimeout(SDL_semaphore*,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="134">
  Variant of SDL_SemWait() with a timeout in milliseconds.

  \return 0 if the wait succeeds, ::SDL_MUTEX_TIMEDOUT if the wait does not
          succeed in the allotted time, and -1 on error.

  \warning On some platforms this function is implemented by looping with a
           delay of 1 ms, and so should be avoided if possible.

</member>
<member name="M:SDL_SemPost(SDL_semaphore*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="145">
  Atomically increases the semaphore's count (not blocking).

  \return 0, or -1 on error.

</member>
<member name="M:SDL_SemValue(SDL_semaphore*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="152">
Returns the current count of the semaphore.

</member>
<member name="T:SDL_cond" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="160">
\name Condition variable functions

</member>
<member name="M:SDL_CreateCond" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="169">
  Create a condition variable.

  Typical use of condition variables:

  Thread A:
    SDL_LockMutex(lock);
    while ( ! condition ) {
        SDL_CondWait(cond, lock);
    }
    SDL_UnlockMutex(lock);

  Thread B:
    SDL_LockMutex(lock);
    ...
    condition = true;
    ...
    SDL_CondSignal(cond);
    SDL_UnlockMutex(lock);

  There is some discussion whether to signal the condition variable
  with the mutex locked or not.  There is some potential performance
  benefit to unlocking first on some platforms, but there are some
  potential race conditions depending on how your code is structured.

  In general it's safer to signal the condition variable while the
  mutex is locked.

</member>
<member name="M:SDL_DestroyCond(SDL_cond*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="199">
Destroy a condition variable.

</member>
<member name="M:SDL_CondSignal(SDL_cond*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="204">
  Restart one of the threads that are waiting on the condition variable.

  \return 0 or -1 on error.

</member>
<member name="M:SDL_CondBroadcast(SDL_cond*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="211">
  Restart all threads that are waiting on the condition variable.

  \return 0 or -1 on error.

</member>
<member name="M:SDL_CondWait(SDL_cond*,SDL_mutex*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="218">
  Wait on the condition variable, unlocking the provided mutex.

  \warning The mutex must be locked before entering this function!

  The mutex is re-locked once the condition variable is signaled.

  \return 0 when it is signaled, or -1 on error.

</member>
<member name="M:SDL_CondWaitTimeout(SDL_cond*,SDL_mutex*,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mutex.h" line="229">
  Waits for at most \c ms milliseconds, and returns 0 if the condition
  variable is signaled, ::SDL_MUTEX_TIMEDOUT if the condition is not
  signaled in the allotted time, and -1 on error.

  \warning On some platforms this function is implemented by looping with a
           delay of 1 ms, and so should be avoided if possible.

</member>
<member name="T:SDL_Thread" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_thread.h

  Header for the SDL thread management routines.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="D:SDL_ThreadFunction" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="66">
The function passed to SDL_CreateThread().
It is passed a void* user context parameter and returns an int.

</member>
<member name="T:_crt_argv_mode" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="73">
  \file SDL_thread.h

  We compile SDL into a DLL. This means, that it's the DLL which
  creates a new thread for the calling process with the SDL_CreateThread()
  API. There is a problem with this, that only the RTL of the SDL2.DLL will
  be initialized for those threads, and not the RTL of the calling
  application!

  To solve this, we make a little hack here.

  We'll always use the caller's _beginthread() and _endthread() APIs to
  start a new thread. This way, if it's the SDL2.DLL which uses this API,
  then the RTL of SDL2.DLL will be used to create the new thread, and if it's
  the application, then the RTL of the application will be used.

  So, in short:
  Always use the _beginthread() and _endthread() of the calling runtime
  library!

</member>
<member name="M:SDL_CreateThread(=FUNC:System.Int32(System.Void*),System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Void*,=FUNC:System.UInt64(System.Void*,System.UInt32,=FUNC:System.UInt32(System.Void*),System.Void*,System.UInt32,System.UInt32*),=FUNC:System.Void(System.UInt32))" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="101">
Create a thread.

</member>
<member name="M:SDL_GetThreadName(SDL_Thread*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="116">
Create a thread.

Get the thread name, as it was specified in SDL_CreateThread().
 This function returns a pointer to a UTF-8 string that names the
 specified thread, or NULL if it doesn't have a name. This is internal
 memory, not to be free()'d by the caller, and remains valid until the
 specified thread is cleaned up by SDL_WaitThread().

</member>
<member name="M:SDL_ThreadID" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="211">
Get the thread identifier for the current thread.

</member>
<member name="M:SDL_GetThreadID(SDL_Thread*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="216">
  Get the thread identifier for the specified thread.

  Equivalent to SDL_ThreadID() if the specified thread is NULL.

</member>
<member name="M:SDL_SetThreadPriority(SDL_ThreadPriority)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="223">
Set the priority for the current thread

</member>
<member name="M:SDL_WaitThread(SDL_Thread*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="228">
  Wait for a thread to finish. Threads that haven't been detached will
  remain (as a "zombie") until this function cleans them up. Not doing so
  is a resource leak.

  Once a thread has been cleaned up through this function, the SDL_Thread
  that references it becomes invalid and should not be referenced again.
  As such, only one thread may call SDL_WaitThread() on another.

  The return code for the thread function is placed in the area
  pointed to by \c status, if \c status is not NULL.

  You may not wait on a thread that has been used in a call to
  SDL_DetachThread(). Use either that function or this one, but not
  both, or behavior is undefined.

  It is safe to pass NULL to this function; it is a no-op.

</member>
<member name="M:SDL_DetachThread(SDL_Thread*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="248">
  A thread may be "detached" to signify that it should not remain until
  another thread has called SDL_WaitThread() on it. Detaching a thread
  is useful for long-running threads that nothing needs to synchronize
  with or further manage. When a detached thread is done, it simply
  goes away.

  There is no way to recover the return code of a detached thread. If you
  need this, don't detach the thread and instead use SDL_WaitThread().

  Once a thread is detached, you should usually assume the SDL_Thread isn't
  safe to reference again, as it will become invalid immediately upon
  the detached thread's exit, instead of remaining until someone has called
  SDL_WaitThread() to finally clean it up. As such, don't detach the same
  thread more than once.

  If a thread has already exited when passed to SDL_DetachThread(), it will
  stop waiting for a call to SDL_WaitThread() and clean up immediately.
  It is not safe to detach a thread that might be used with SDL_WaitThread().

  You may not call SDL_WaitThread() on a thread that has been detached.
  Use either that function or this one, but not both, or behavior is
  undefined.

  It is safe to pass NULL to this function; it is a no-op.

</member>
<!-- 'M:SDL_TLSCreate' 멤버에 대한 잘못된 형식의 XML 문서 주석을 삭제합니다.-->
<member name="M:SDL_TLSGet(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="308">
  \brief Get the value associated with a thread local storage ID for the current thread.

  \param id The thread local storage ID

  \return The value associated with the ID for the current thread, or NULL if no value has been set.

  \sa SDL_TLSCreate()
  \sa SDL_TLSSet()

</member>
<member name="M:SDL_TLSSet(System.UInt32,System.Void!System.Runtime.CompilerServices.IsConst*,=FUNC:System.Void(System.Void*))" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_thread.h" line="320">
  \brief Set the value associated with a thread local storage ID for the current thread.

  \param id The thread local storage ID
  \param value The value to associate with the ID for the current thread
  \param destructor A function called when the thread exits, to free the value.

  \return 0 on success, -1 on error

  \sa SDL_TLSCreate()
  \sa SDL_TLSGet()

</member>
<member name="T:SDL_RWops" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_rwops.h

  This file provides a general interface for SDL to read and write
  data streams.  It can easily be extended to files, memory, etc.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

This is the read/write operation structure -- very basic.

</member>
<member name="T:SDL_RWops" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="54">
Return the size of the file in this rwops, or -1 if unknown

</member>
<member name="T:SDL_RWops" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="59">
  Seek to \c offset relative to \c whence, one of stdio's whence values:
  RW_SEEK_SET, RW_SEEK_CUR, RW_SEEK_END

  \return the final offset in the data stream, or -1 on error.

</member>
<member name="T:SDL_RWops" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="68">
  Read up to \c maxnum objects each of size \c size from the data
  stream to the area pointed at by \c ptr.

  \return the number of objects read, or 0 at error or end of file.

</member>
<member name="T:SDL_RWops" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="77">
  Write exactly \c num objects each of size \c size from the area
  pointed at by \c ptr to data stream.

  \return the number of objects written, or 0 at error or end of file.

</member>
<member name="T:SDL_RWops" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="86">
  Close and free an allocated SDL_RWops structure.

  \return 0 if successful or -1 on write error when flushing data.

</member>
<member name="M:SDL_RWFromFile(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="146">
  \name RWFrom functions

  Functions to create SDL_RWops structures from various data streams.

</member>
<member name="M:SDL_RWsize(SDL_RWops*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="178">
Return the size of the file in this rwops, or -1 if unknown

</member>
<member name="M:SDL_RWseek(SDL_RWops*,System.Int64,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="183">
  Seek to \c offset relative to \c whence, one of stdio's whence values:
  RW_SEEK_SET, RW_SEEK_CUR, RW_SEEK_END

  \return the final offset in the data stream, or -1 on error.

</member>
<member name="M:SDL_RWtell(SDL_RWops*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="192">
Return the current offset in the data stream, or -1 on error.

</member>
<member name="M:SDL_RWread(SDL_RWops*,System.Void*,System.UInt64,System.UInt64)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="197">
  Read up to \c maxnum objects each of size \c size from the data
  stream to the area pointed at by \c ptr.

  \return the number of objects read, or 0 at error or end of file.

</member>
<member name="M:SDL_RWwrite(SDL_RWops*,System.Void!System.Runtime.CompilerServices.IsConst*,System.UInt64,System.UInt64)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="206">
  Write exactly \c num objects each of size \c size from the area
  pointed at by \c ptr to data stream.

  \return the number of objects written, or 0 at error or end of file.

</member>
<member name="M:SDL_RWclose(SDL_RWops*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="215">
  Close and free an allocated SDL_RWops structure.

  \return 0 if successful or -1 on write error when flushing data.

</member>
<member name="M:SDL_LoadFile_RW(SDL_RWops*,System.UInt64*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="222">
  Load all the data from an SDL data stream.

  The data is allocated with a zero byte at the end (null terminated)

  If \c datasize is not NULL, it is filled with the size of the data read.

  If \c freesrc is non-zero, the stream will be closed after being read.

  The data should be freed with SDL_free().

  \return the data, or NULL if there was an error.

</member>
<member name="M:SDL_LoadFile(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt64*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="238">
  Load an entire file.

  The data is allocated with a zero byte at the end (null terminated)

  If \c datasize is not NULL, it is filled with the size of the data read.

  If \c freesrc is non-zero, the stream will be closed after being read.

  The data should be freed with SDL_free().

  \return the data, or NULL if there was an error.

</member>
<member name="M:SDL_ReadU8(SDL_RWops*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="253">
  \name Read endian functions

  Read an item of the specified endianness and return in native format.

</member>
<member name="M:SDL_WriteU8(SDL_RWops*,System.Byte)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rwops.h" line="268">
  \name Write endian functions

  Write an item of native format to the specified endianness.

</member>
<member name="D:SDL_AudioFormat" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

 *  \brief Audio format flags.
 *
 *  These are what the 16 bits in SDL_AudioFormat currently mean...
 *  (Unspecified bits are always zero).
 *
 *  \verbatim
    ++-----------------------sample is signed if set
    ||
    ||       ++-----------sample is bigendian if set
    ||       ||
    ||       ||          ++---sample is float if set
    ||       ||          ||
    ||       ||          || +---sample bit size---+
    ||       ||          || |                     |
    15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00
    \endverbatim
 *
 *  There are macros in SDL 2.0 and later to query these bits.

</member>
<member name="D:SDL_AudioCallback" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="66">
\name Audio flags

  \name Audio format flags

  Defaults to LSB byte order.

\name int32 support

\name float32 support

\name Native audio byte ordering

  \name Allow change flags

  Which audio format changes are allowed when opening a device.

  This function is called when the audio device needs more data.

  \param userdata An application-specific parameter saved in
                  the SDL_AudioSpec structure
  \param stream A pointer to the audio data buffer.
  \param len    The length of that buffer in bytes.

  Once the callback returns, the buffer will no longer be valid.
  Stereo samples are stored in a LRLRLR ordering.

  You can choose to avoid callbacks and use SDL_QueueAudio() instead, if
  you like. Just open your audio device with a NULL callback.

</member>
<member name="T:SDL_AudioSpec" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="166">
  The calculated values in this structure are calculated by SDL_OpenAudio().

  For multi-channel audio, the default SDL channel mapping is:
  2:  FL FR                       (stereo)
  3:  FL FR LFE                   (2.1 surround)
  4:  FL FR BL BR                 (quad)
  5:  FL FR FC BL BR              (quad + center)
  6:  FL FR FC LFE SL SR          (5.1 surround - last two can also be BL BR)
  7:  FL FR FC LFE BC SL SR       (6.1 surround)
  8:  FL FR FC LFE BL BR SL SR    (7.1 surround)

</member>
<member name="T:SDL_AudioCVT" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="196">
  \brief Upper limit of filters in SDL_AudioCVT

  The maximum number of SDL_AudioFilter functions in SDL_AudioCVT is
  currently limited to 9. The SDL_AudioCVT.filters array has 10 pointers,
  one of which is the terminating NULL pointer.

  \struct SDL_AudioCVT
  \brief A structure to hold a set of audio conversion filters and buffers.

  Note that various parts of the conversion pipeline can take advantage
  of SIMD operations (like SSE2, for example). SDL_AudioCVT doesn't require
  you to pass it aligned data, but can possibly run much faster if you
  set both its (buf) field to a pointer that is aligned to 16 bytes, and its
  (len) field to something that's a multiple of 16, if possible.

</member>
<member name="M:SDL_GetNumAudioDrivers" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="244">
  \name Driver discovery functions

  These functions return the list of built in audio drivers, in the
  order that they are normally initialized by default.

</member>
<member name="M:SDL_AudioInit(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="255">
  \name Initialization and cleanup

  \internal These functions are used internally, and should not be used unless
            you have a specific need to specify the audio driver you want to
            use.  You should normally use SDL_Init() or SDL_InitSubSystem().

</member>
<member name="M:SDL_GetCurrentAudioDriver" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="267">
This function returns the name of the current audio driver, or NULL
if no driver has been initialized.

</member>
<member name="M:SDL_OpenAudio(SDL_AudioSpec*,SDL_AudioSpec*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="273">
  This function opens the audio device with the desired parameters, and
  returns 0 if successful, placing the actual hardware parameters in the
  structure pointed to by \c obtained.  If \c obtained is NULL, the audio
  data passed to the callback function will be guaranteed to be in the
  requested format, and will be automatically converted to the hardware
  audio format if necessary.  This function returns -1 if it failed
  to open the audio device, or couldn't set up the audio thread.

  When filling in the desired audio spec structure,
    - \c desired-&gt;freq should be the desired audio frequency in samples-per-
      second.
    - \c desired-&gt;format should be the desired audio format.
    - \c desired-&gt;samples is the desired size of the audio buffer, in
      samples.  This number should be a power of two, and may be adjusted by
      the audio driver to a value more suitable for the hardware.  Good values
      seem to range between 512 and 8096 inclusive, depending on the
      application and CPU speed.  Smaller values yield faster response time,
      but can lead to underflow if the application is doing heavy processing
      and cannot fill the audio buffer in time.  A stereo sample consists of
      both right and left channels in LR ordering.
      Note that the number of samples is directly related to time by the
      following formula:  \code ms = (samples*1000)/freq \endcode
    - \c desired-&gt;size is the size in bytes of the audio buffer, and is
      calculated by SDL_OpenAudio().
    - \c desired-&gt;silence is the value used to set the buffer to silence,
      and is calculated by SDL_OpenAudio().
    - \c desired-&gt;callback should be set to a function that will be called
      when the audio device is ready for more data.  It is passed a pointer
      to the audio buffer, and the length in bytes of the audio buffer.
      This function usually runs in a separate thread, and so you should
      protect data structures that it accesses by calling SDL_LockAudio()
      and SDL_UnlockAudio() in your code. Alternately, you may pass a NULL
      pointer here, and call SDL_QueueAudio() with some frequency, to queue
      more audio samples to be played (or for capture devices, call
      SDL_DequeueAudio() with some frequency, to obtain audio samples).
    - \c desired-&gt;userdata is passed as the first parameter to your callback
      function. If you passed a NULL callback, this value is ignored.

  The audio device starts out playing silence when it's opened, and should
  be enabled for playing by calling \c SDL_PauseAudio(0) when you are ready
  for your audio callback function to be called.  Since the audio driver
  may modify the requested size of the audio buffer, you should allocate
  any local mixing buffers after you open the audio device.

</member>
<member name="D:SDL_AudioDeviceID" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="321">
  SDL Audio Device IDs.

  A successful call to SDL_OpenAudio() is always device id 1, and legacy
  SDL audio APIs assume you want this device ID. SDL_OpenAudioDevice() calls
  always returns devices &gt;= 2 on success. The legacy calls are good both
  for backwards compatibility and when you don't care about multiple,
  specific, or capture devices.

</member>
<!-- 'M:SDL_GetNumAudioDevices(System.Int32)' 멤버에 대한 잘못된 형식의 XML 문서 주석을 삭제합니다.-->
<member name="M:SDL_GetAudioDeviceName(System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="346">
  Get the human-readable name of a specific audio device.
  Must be a value between 0 and (number of audio devices-1).
  Only valid after a successfully initializing the audio subsystem.
  The values returned by this function reflect the latest call to
  SDL_GetNumAudioDevices(); recall that function to redetect available
  hardware.

  The string returned by this function is UTF-8 encoded, read-only, and
  managed internally. You are not to free it. If you need to keep the
  string for any length of time, you should make your own copy of it, as it
  will be invalid next time any of several other SDL functions is called.

</member>
<member name="M:SDL_OpenAudioDevice(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32,SDL_AudioSpec!System.Runtime.CompilerServices.IsConst*,SDL_AudioSpec*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="363">
  Open a specific audio device. Passing in a device name of NULL requests
  the most reasonable default (and is equivalent to calling SDL_OpenAudio()).

  The device name is a UTF-8 string reported by SDL_GetAudioDeviceName(), but
  some drivers allow arbitrary and driver-specific strings, such as a
  hostname/IP address for a remote audio server, or a filename in the
  diskaudio driver.

  \return 0 on error, a valid device ID that is &gt;= 2 on success.

  SDL_OpenAudio(), unlike this function, always acts on device ID 1.

</member>
<member name="M:SDL_PauseAudio(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="407">
  \name Pause audio functions

  These functions pause and unpause the audio callback processing.
  They should be called with a parameter of 0 after opening the audio
  device to start playing sound.  This is so you can safely initialize
  data for your callback function after opening the audio device.
  Silence will be written to the audio device during the pause.

</member>
<member name="M:SDL_LoadWAV_RW(SDL_RWops*,System.Int32,SDL_AudioSpec*,System.Byte**,System.UInt32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="422">
  \brief Load the audio data of a WAVE file into memory

  Loading a WAVE file requires \c src, \c spec, \c audio_buf and \c audio_len
  to be valid pointers. The entire data portion of the file is then loaded
  into memory and decoded if necessary.

  If \c freesrc is non-zero, the data source gets automatically closed and
  freed before the function returns.

  Supported are RIFF WAVE files with the formats PCM (8, 16, 24, and 32 bits),
  IEEE Float (32 bits), Microsoft ADPCM and IMA ADPCM (4 bits), and A-law and
  쨉-law (8 bits). Other formats are currently unsupported and cause an error.

  If this function succeeds, the pointer returned by it is equal to \c spec
  and the pointer to the audio data allocated by the function is written to
  \c audio_buf and its length in bytes to \c audio_len. The \ref SDL_AudioSpec
  members \c freq, \c channels, and \c format are set to the values of the
  audio data in the buffer. The \c samples member is set to a sane default and
  all others are set to zero.

  It's necessary to use SDL_FreeWAV() to free the audio data returned in
  \c audio_buf when it is no longer used.

  Because of the underspecification of the Waveform format, there are many
  problematic files in the wild that cause issues with strict decoders. To
  provide compatibility with these files, this decoder is lenient in regards
  to the truncation of the file, the fact chunk, and the size of the RIFF
  chunk. The hints SDL_HINT_WAVE_RIFF_CHUNK_SIZE, SDL_HINT_WAVE_TRUNCATION,
  and SDL_HINT_WAVE_FACT_CHUNK can be used to tune the behavior of the
  loading process.

  Any file that is invalid (due to truncation, corruption, or wrong values in
  the headers), too big, or unsupported causes an error. Additionally, any
  critical I/O error from the data source will terminate the loading process
  with an error. The function returns NULL on error and in all cases (with the
  exception of \c src being NULL), an appropriate error message will be set.

  It is required that the data source supports seeking.

  Example:
  \code
      SDL_LoadWAV_RW(SDL_RWFromFile("sample.wav", "rb"), 1, ...);
  \endcode

  \param src The data source with the WAVE data
  \param freesrc A integer value that makes the function close the data source if non-zero
  \param spec A pointer filled with the audio format of the audio data
  \param audio_buf A pointer filled with the audio data allocated by the function
  \param audio_len A pointer filled with the length of the audio data buffer in bytes
  \return NULL on error, or non-NULL on success.

</member>
<member name="M:SDL_FreeWAV(System.Byte*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="480">
Loads a WAV from a file.
Compatibility convenience function.

This function frees data previously allocated with SDL_LoadWAV_RW()

</member>
<member name="M:SDL_BuildAudioCVT(SDL_AudioCVT*,System.UInt16,System.Byte,System.Int32,System.UInt16,System.Byte,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="492">
  This function takes a source format and rate and a destination format
  and rate, and initializes the \c cvt structure with information needed
  by SDL_ConvertAudio() to convert a buffer of audio data from one format
  to the other. An unsupported format causes an error and -1 will be returned.

  \return 0 if no conversion is needed, 1 if the audio filter is set up,
  or -1 on error.

</member>
<member name="M:SDL_ConvertAudio(SDL_AudioCVT*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="509">
  Once you have initialized the \c cvt structure using SDL_BuildAudioCVT(),
  created an audio buffer \c cvt-&gt;buf, and filled it with \c cvt-&gt;len bytes of
  audio data in the source format, this function will convert it in-place
  to the desired format.

  The data conversion may expand the size of the audio data, so the buffer
  \c cvt-&gt;buf should be allocated after the \c cvt structure is initialized by
  SDL_BuildAudioCVT(), and should be \c cvt-&gt;len*cvt-&gt;len_mult bytes long.

  \return 0 on success or -1 if \c cvt-&gt;buf is NULL.

</member>
<member name="M:SDL_NewAudioStream(System.UInt16!System.Runtime.CompilerServices.IsConst,System.Byte!System.Runtime.CompilerServices.IsConst,System.Int32!System.Runtime.CompilerServices.IsConst,System.UInt16!System.Runtime.CompilerServices.IsConst,System.Byte!System.Runtime.CompilerServices.IsConst,System.Int32!System.Runtime.CompilerServices.IsConst)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="534">
  Create a new audio stream

  \param src_format The format of the source audio
  \param src_channels The number of channels of the source audio
  \param src_rate The sampling rate of the source audio
  \param dst_format The format of the desired audio output
  \param dst_channels The number of channels of the desired audio output
  \param dst_rate The sampling rate of the desired audio output
  \return 0 on success, or -1 on error.

  \sa SDL_AudioStreamPut
  \sa SDL_AudioStreamGet
  \sa SDL_AudioStreamAvailable
  \sa SDL_AudioStreamFlush
  \sa SDL_AudioStreamClear
  \sa SDL_FreeAudioStream

</member>
<member name="M:SDL_AudioStreamPut(_SDL_AudioStream*,System.Void!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="559">
  Add data to be converted/resampled to the stream

  \param stream The stream the audio data is being added to
  \param buf A pointer to the audio data to add
  \param len The number of bytes to write to the stream
  \return 0 on success, or -1 on error.

  \sa SDL_NewAudioStream
  \sa SDL_AudioStreamGet
  \sa SDL_AudioStreamAvailable
  \sa SDL_AudioStreamFlush
  \sa SDL_AudioStreamClear
  \sa SDL_FreeAudioStream

</member>
<member name="M:SDL_AudioStreamGet(_SDL_AudioStream*,System.Void*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="576">
  Get converted/resampled data from the stream

  \param stream The stream the audio is being requested from
  \param buf A buffer to fill with audio data
  \param len The maximum number of bytes to fill
  \return The number of bytes read from the stream, or -1 on error

  \sa SDL_NewAudioStream
  \sa SDL_AudioStreamPut
  \sa SDL_AudioStreamAvailable
  \sa SDL_AudioStreamFlush
  \sa SDL_AudioStreamClear
  \sa SDL_FreeAudioStream

</member>
<member name="M:SDL_AudioStreamAvailable(_SDL_AudioStream*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="593">
 Get the number of converted/resampled bytes available. The stream may be
  buffering data behind the scenes until it has enough to resample
  correctly, so this number might be lower than what you expect, or even
  be zero. Add more data or flush the stream if you need the data now.

  \sa SDL_NewAudioStream
  \sa SDL_AudioStreamPut
  \sa SDL_AudioStreamGet
  \sa SDL_AudioStreamFlush
  \sa SDL_AudioStreamClear
  \sa SDL_FreeAudioStream

</member>
<member name="M:SDL_AudioStreamFlush(_SDL_AudioStream*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="608">
 Tell the stream that you're done sending data, and anything being buffered
  should be converted/resampled and made available immediately.

 It is legal to add more data to a stream after flushing, but there will
  be audio gaps in the output. Generally this is intended to signal the
  end of input, so the complete output becomes available.

  \sa SDL_NewAudioStream
  \sa SDL_AudioStreamPut
  \sa SDL_AudioStreamGet
  \sa SDL_AudioStreamAvailable
  \sa SDL_AudioStreamClear
  \sa SDL_FreeAudioStream

</member>
<member name="M:SDL_AudioStreamClear(_SDL_AudioStream*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="625">
  Clear any pending data in the stream without converting it

  \sa SDL_NewAudioStream
  \sa SDL_AudioStreamPut
  \sa SDL_AudioStreamGet
  \sa SDL_AudioStreamAvailable
  \sa SDL_AudioStreamFlush
  \sa SDL_FreeAudioStream

</member>
<member name="M:SDL_FreeAudioStream(_SDL_AudioStream*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="637">
 Free an audio stream

  \sa SDL_NewAudioStream
  \sa SDL_AudioStreamPut
  \sa SDL_AudioStreamGet
  \sa SDL_AudioStreamAvailable
  \sa SDL_AudioStreamFlush
  \sa SDL_AudioStreamClear

</member>
<member name="M:SDL_MixAudio(System.Byte*,System.Byte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="650">
This takes two audio buffers of the playing audio format and mixes
them, performing addition, volume adjustment, and overflow clipping.
The volume ranges from 0 - 128, and should be set to ::SDL_MIX_MAXVOLUME
for full audio volume.  Note this does not change hardware volume.
This is provided for convenience -- you can mix your own audio data.

</member>
<member name="M:SDL_MixAudioFormat(System.Byte*,System.Byte!System.Runtime.CompilerServices.IsConst*,System.UInt16,System.UInt32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="660">
This works like SDL_MixAudio(), but you specify the audio format instead of
using the format of audio device 1. Thus it can be used when no audio
device is open at all.

</member>
<member name="M:SDL_QueueAudio(System.UInt32,System.Void!System.Runtime.CompilerServices.IsConst*,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="670">
  Queue more audio on non-callback devices.

  (If you are looking to retrieve queued audio from a non-callback capture
  device, you want SDL_DequeueAudio() instead. This will return -1 to
  signify an error if you use it with capture devices.)

  SDL offers two ways to feed audio to the device: you can either supply a
  callback that SDL triggers with some frequency to obtain more audio
  (pull method), or you can supply no callback, and then SDL will expect
  you to supply data at regular intervals (push method) with this function.

  There are no limits on the amount of data you can queue, short of
  exhaustion of address space. Queued data will drain to the device as
  necessary without further intervention from you. If the device needs
  audio but there is not enough queued, it will play silence to make up
  the difference. This means you will have skips in your audio playback
  if you aren't routinely queueing sufficient data.

  This function copies the supplied data, so you are safe to free it when
  the function returns. This function is thread-safe, but queueing to the
  same device from two threads at once does not promise which buffer will
  be queued first.

  You may not queue audio on a device that is using an application-supplied
  callback; doing so returns an error. You have to use the audio callback
  or queue audio with this function, but not both.

  You should not call SDL_LockAudio() on the device before queueing; SDL
  handles locking internally for this function.

  \param dev The device ID to which we will queue audio.
  \param data The data to queue to the device for later playback.
  \param len The number of bytes (not samples!) to which (data) points.
  \return 0 on success, or -1 on error.

  \sa SDL_GetQueuedAudioSize
  \sa SDL_ClearQueuedAudio

</member>
<member name="M:SDL_DequeueAudio(System.UInt32,System.Void*,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="711">
  Dequeue more audio on non-callback devices.

  (If you are looking to queue audio for output on a non-callback playback
  device, you want SDL_QueueAudio() instead. This will always return 0
  if you use it with playback devices.)

  SDL offers two ways to retrieve audio from a capture device: you can
  either supply a callback that SDL triggers with some frequency as the
  device records more audio data, (push method), or you can supply no
  callback, and then SDL will expect you to retrieve data at regular
  intervals (pull method) with this function.

  There are no limits on the amount of data you can queue, short of
  exhaustion of address space. Data from the device will keep queuing as
  necessary without further intervention from you. This means you will
  eventually run out of memory if you aren't routinely dequeueing data.

  Capture devices will not queue data when paused; if you are expecting
  to not need captured audio for some length of time, use
  SDL_PauseAudioDevice() to stop the capture device from queueing more
  data. This can be useful during, say, level loading times. When
  unpaused, capture devices will start queueing data from that point,
  having flushed any capturable data available while paused.

  This function is thread-safe, but dequeueing from the same device from
  two threads at once does not promise which thread will dequeued data
  first.

  You may not dequeue audio from a device that is using an
  application-supplied callback; doing so returns an error. You have to use
  the audio callback, or dequeue audio with this function, but not both.

  You should not call SDL_LockAudio() on the device before queueing; SDL
  handles locking internally for this function.

  \param dev The device ID from which we will dequeue audio.
  \param data A pointer into where audio data should be copied.
  \param len The number of bytes (not samples!) to which (data) points.
  \return number of bytes dequeued, which could be less than requested.

  \sa SDL_GetQueuedAudioSize
  \sa SDL_ClearQueuedAudio

</member>
<member name="M:SDL_GetQueuedAudioSize(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="757">
  Get the number of bytes of still-queued audio.

  For playback device:

    This is the number of bytes that have been queued for playback with
    SDL_QueueAudio(), but have not yet been sent to the hardware. This
    number may shrink at any time, so this only informs of pending data.

    Once we've sent it to the hardware, this function can not decide the
    exact byte boundary of what has been played. It's possible that we just
    gave the hardware several kilobytes right before you called this
    function, but it hasn't played any of it yet, or maybe half of it, etc.

  For capture devices:

    This is the number of bytes that have been captured by the device and
    are waiting for you to dequeue. This number may grow at any time, so
    this only informs of the lower-bound of available data.

  You may not queue audio on a device that is using an application-supplied
  callback; calling this function on such a device always returns 0.
  You have to queue audio with SDL_QueueAudio()/SDL_DequeueAudio(), or use
  the audio callback, but not both.

  You should not call SDL_LockAudio() on the device before querying; SDL
  handles locking internally for this function.

  \param dev The device ID of which we will query queued audio size.
  \return Number of bytes (not samples!) of queued audio.

  \sa SDL_QueueAudio
  \sa SDL_ClearQueuedAudio

</member>
<member name="M:SDL_ClearQueuedAudio(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="793">
  Drop any queued audio data. For playback devices, this is any queued data
  still waiting to be submitted to the hardware. For capture devices, this
  is any data that was queued by the device that hasn't yet been dequeued by
  the application.

  Immediately after this call, SDL_GetQueuedAudioSize() will return 0. For
  playback devices, the hardware will start playing silence if more audio
  isn't queued. Unpaused capture devices will start filling the queue again
  as soon as they have more data available (which, depending on the state
  of the hardware and the thread, could be before this function call
  returns!).

  This will not prevent playback of queued audio that's already been sent
  to the hardware, as we can not undo that, so expect there to be some
  fraction of a second of audio that might still be heard. This can be
  useful if you want to, say, drop any pending music during a level change
  in your game.

  You may not queue audio on a device that is using an application-supplied
  callback; calling this function on such a device is always a no-op.
  You have to queue audio with SDL_QueueAudio()/SDL_DequeueAudio(), or use
  the audio callback, but not both.

  You should not call SDL_LockAudio() on the device before clearing the
  queue; SDL handles locking internally for this function.

  This function always succeeds and thus returns void.

  \param dev The device ID of which to clear the audio queue.

  \sa SDL_QueueAudio
  \sa SDL_GetQueuedAudioSize

</member>
<member name="M:SDL_LockAudio" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="830">
  \name Audio lock functions

  The lock manipulated by these functions protects the callback function.
  During a SDL_LockAudio()/SDL_UnlockAudio() pair, you can be guaranteed that
  the callback function is not running.  Do not call these from the callback
  function or you will cause deadlock.

</member>
<member name="M:SDL_CloseAudio" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_audio.h" line="845">
This function shuts down audio processing and closes the audio device.

</member>
<member name="M:SDL_SetClipboardText(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

 \file SDL_clipboard.h

 Include file for SDL clipboard handling

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

 \brief Put UTF-8 text into the clipboard

 \sa SDL_GetClipboardText()

</member>
<member name="M:SDL_GetClipboardText" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_clipboard.h" line="48">
 \brief Get UTF-8 text from the clipboard, which must be freed with SDL_free()

 \sa SDL_SetClipboardText()

</member>
<member name="M:SDL_HasClipboardText" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_clipboard.h" line="55">
 \brief Returns a flag indicating whether the clipboard exists and contains a text string that is non-empty

 \sa SDL_GetClipboardText()

</member>
<member name="T:_SETJMP_FLOAT128" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_cpuinfo.h

  CPU feature detection for SDL.

</member>
<member name="M:SDL_GetCPUCount" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\begin_code.h" line="22">
  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

This function returns the number of CPU cores available.

</member>
<member name="M:SDL_GetCPUCacheLineSize" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="121">
  This function returns the L1 cache line size of the CPU

  This is useful for determining multi-threaded structure padding
  or SIMD prefetch sizes.

</member>
<member name="M:SDL_HasRDTSC" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="129">
This function returns true if the CPU has the RDTSC instruction.

</member>
<member name="M:SDL_HasAltiVec" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="134">
This function returns true if the CPU has AltiVec features.

</member>
<member name="M:SDL_HasMMX" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="139">
This function returns true if the CPU has MMX features.

</member>
<member name="M:SDL_Has3DNow" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="144">
This function returns true if the CPU has 3DNow! features.

</member>
<member name="M:SDL_HasSSE" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="149">
This function returns true if the CPU has SSE features.

</member>
<member name="M:SDL_HasSSE2" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="154">
This function returns true if the CPU has SSE2 features.

</member>
<member name="M:SDL_HasSSE3" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="159">
This function returns true if the CPU has SSE3 features.

</member>
<member name="M:SDL_HasSSE41" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="164">
This function returns true if the CPU has SSE4.1 features.

</member>
<member name="M:SDL_HasSSE42" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="169">
This function returns true if the CPU has SSE4.2 features.

</member>
<member name="M:SDL_HasAVX" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="174">
This function returns true if the CPU has AVX features.

</member>
<member name="M:SDL_HasAVX2" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="179">
This function returns true if the CPU has AVX2 features.

</member>
<member name="M:SDL_HasAVX512F" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="184">
This function returns true if the CPU has AVX-512F (foundation) features.

</member>
<member name="M:SDL_HasNEON" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="189">
This function returns true if the CPU has NEON (ARM SIMD) features.

</member>
<member name="M:SDL_GetSystemRAM" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="194">
This function returns the amount of RAM configured in the system, in MB.

</member>
<member name="M:SDL_SIMDGetAlignment" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="199">
 \brief Report the alignment this system needs for SIMD allocations.

 This will return the minimum number of bytes to which a pointer must be
  aligned to be compatible with SIMD instructions on the current machine.
  For example, if the machine supports SSE only, it will return 16, but if
  it supports AVX-512F, it'll return 64 (etc). This only reports values for
  instruction sets SDL knows about, so if your SDL build doesn't have
  SDL_HasAVX512F(), then it might return 16 for the SSE support it sees and
  not 64 for the AVX-512 instructions that exist but SDL doesn't know about.
  Plan accordingly.

</member>
<member name="M:SDL_SIMDAlloc(System.UInt64!System.Runtime.CompilerServices.IsConst)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="213">
 \brief Allocate memory in a SIMD-friendly way.

 This will allocate a block of memory that is suitable for use with SIMD
  instructions. Specifically, it will be properly aligned and padded for
  the system's supported vector instructions.

 The memory returned will be padded such that it is safe to read or write
  an incomplete vector at the end of the memory block. This can be useful
  so you don't have to drop back to a scalar fallback at the end of your
  SIMD processing loop to deal with the final elements without overflowing
  the allocated buffer.

 You must free this memory with SDL_FreeSIMD(), not free() or SDL_free()
  or delete[], etc.

 Note that SDL will only deal with SIMD instruction sets it is aware of;
  for example, SDL 2.0.8 knows that SSE wants 16-byte vectors
  (SDL_HasSSE()), and AVX2 wants 32 bytes (SDL_HasAVX2()), but doesn't
  know that AVX-512 wants 64. To be clear: if you can't decide to use an
  instruction set with an SDL_Has*() function, don't use that instruction
  set with memory allocated through here.

 SDL_AllocSIMD(0) will return a non-NULL pointer, assuming the system isn't
  out of memory.

  \param len The length, in bytes, of the block to allocated. The actual
             allocated block might be larger due to padding, etc.
 \return Pointer to newly-allocated block, NULL if out of memory.

 \sa SDL_SIMDAlignment
 \sa SDL_SIMDFree

</member>
<member name="M:SDL_SIMDFree(System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_cpuinfo.h" line="248">
 \brief Deallocate memory obtained from SDL_SIMDAlloc

 It is not valid to use this function on a pointer from anything but
  SDL_SIMDAlloc(). It can't be used on pointers from malloc, realloc,
  SDL_malloc, memalign, new[], etc.

 However, SDL_SIMDFree(NULL) is a legal no-op.

 \sa SDL_SIMDAlloc

</member>
<member name="T:SDL_PixelFormat" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="312">
\note Everything in the pixel format structure is read-only.

</member>
<member name="M:SDL_GetPixelFormatName(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="338">
\brief Get the human readable name of a pixel format

</member>
<member name="M:SDL_PixelFormatEnumToMasks(System.UInt32,System.Int32*,System.UInt32*,System.UInt32*,System.UInt32*,System.UInt32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="343">
  \brief Convert one of the enumerated pixel formats to a bpp and RGBA masks.

  \return SDL_TRUE, or SDL_FALSE if the conversion wasn't possible.

  \sa SDL_MasksToPixelFormatEnum()

</member>
<member name="M:SDL_MasksToPixelFormatEnum(System.Int32,System.UInt32,System.UInt32,System.UInt32,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="357">
  \brief Convert a bpp and RGBA masks to an enumerated pixel format.

  \return The pixel format, or ::SDL_PIXELFORMAT_UNKNOWN if the conversion
          wasn't possible.

  \sa SDL_PixelFormatEnumToMasks()

</member>
<member name="M:SDL_AllocFormat(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="371">
\brief Create an SDL_PixelFormat structure from a pixel format enum.

</member>
<member name="M:SDL_FreeFormat(SDL_PixelFormat*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="376">
\brief Free an SDL_PixelFormat structure.

</member>
<member name="M:SDL_AllocPalette(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="381">
  \brief Create a palette structure with the specified number of color
         entries.

  \return A new palette, or NULL if there wasn't enough memory.

  \note The palette entries are initialized to white.

  \sa SDL_FreePalette()

</member>
<member name="M:SDL_SetPixelFormatPalette(SDL_PixelFormat*,SDL_Palette*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="393">
\brief Set the palette for a pixel format structure.

</member>
<member name="M:SDL_SetPaletteColors(SDL_Palette*,SDL_Color!System.Runtime.CompilerServices.IsConst*,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="399">
  \brief Set a range of colors in a palette.

  \param palette    The palette to modify.
  \param colors     An array of colors to copy into the palette.
  \param firstcolor The index of the first palette entry to modify.
  \param ncolors    The number of entries to modify.

  \return 0 on success, or -1 if not all of the colors could be set.

</member>
<member name="M:SDL_FreePalette(SDL_Palette*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="413">
  \brief Free a palette created with SDL_AllocPalette().

  \sa SDL_AllocPalette()

</member>
<member name="M:SDL_MapRGB(SDL_PixelFormat!System.Runtime.CompilerServices.IsConst*,System.Byte,System.Byte,System.Byte)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="420">
  \brief Maps an RGB triple to an opaque pixel value for a given pixel format.

  \sa SDL_MapRGBA

</member>
<member name="M:SDL_MapRGBA(SDL_PixelFormat!System.Runtime.CompilerServices.IsConst*,System.Byte,System.Byte,System.Byte,System.Byte)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="428">
  \brief Maps an RGBA quadruple to a pixel value for a given pixel format.

  \sa SDL_MapRGB

</member>
<member name="M:SDL_GetRGB(System.UInt32,SDL_PixelFormat!System.Runtime.CompilerServices.IsConst*,System.Byte*,System.Byte*,System.Byte*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="437">
  \brief Get the RGB components from a pixel of the specified format.

  \sa SDL_GetRGBA

</member>
<member name="M:SDL_GetRGBA(System.UInt32,SDL_PixelFormat!System.Runtime.CompilerServices.IsConst*,System.Byte*,System.Byte*,System.Byte*,System.Byte*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="446">
  \brief Get the RGBA components from a pixel of the specified format.

  \sa SDL_GetRGB

</member>
<member name="M:SDL_CalculateGammaRamp(System.Single,System.UInt16*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_pixels.h" line="456">
\brief Calculate a 256 entry gamma ramp for a gamma value.

</member>
<member name="T:SDL_Point" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_rect.h

  Header file for SDL_rect definition and management functions.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

  \brief  The structure that defines a point (integer)

  \sa SDL_EnclosePoints
  \sa SDL_PointInRect

</member>
<member name="T:SDL_FPoint" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="54">
  \brief  The structure that defines a point (floating point)

  \sa SDL_EnclosePoints
  \sa SDL_PointInRect

</member>
<member name="T:SDL_Rect" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="67">
  \brief A rectangle, with the origin at the upper left (integer).

  \sa SDL_RectEmpty
  \sa SDL_RectEquals
  \sa SDL_HasIntersection
  \sa SDL_IntersectRect
  \sa SDL_UnionRect
  \sa SDL_EnclosePoints

</member>
<member name="T:SDL_FRect" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="84">
\brief A rectangle, with the origin at the upper left (floating point).

</member>
<member name="M:SDL_PointInRect(SDL_Point!System.Runtime.CompilerServices.IsConst*,SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="96">
\brief Returns true if point resides inside a rectangle.

</member>
<member name="M:SDL_RectEmpty(SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="105">
\brief Returns true if the rectangle has no area.

</member>
<member name="M:SDL_RectEquals(SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="113">
\brief Returns true if the two rectangles are equal.

</member>
<member name="M:SDL_HasIntersection(SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="122">
  \brief Determine whether two rectangles intersect.

  \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.

</member>
<member name="M:SDL_IntersectRect(SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="130">
  \brief Calculate the intersection of two rectangles.

  \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.

</member>
<member name="M:SDL_UnionRect(SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="139">
\brief Calculate the union of two rectangles.

</member>
<member name="M:SDL_EnclosePoints(SDL_Point!System.Runtime.CompilerServices.IsConst*,System.Int32,SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="146">
  \brief Calculate a minimal rectangle enclosing a set of points

  \return SDL_TRUE if any points were within the clipping rect

</member>
<member name="M:SDL_IntersectRectAndLine(SDL_Rect!System.Runtime.CompilerServices.IsConst*,System.Int32*,System.Int32*,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_rect.h" line="156">
  \brief Calculate the intersection of a rectangle and line segment.

  \return SDL_TRUE if there is an intersection, SDL_FALSE otherwise.

</member>
<member name="M:SDL_ComposeCustomBlendMode(SDL_BlendFactor,SDL_BlendFactor,SDL_BlendOperation,SDL_BlendFactor,SDL_BlendFactor,SDL_BlendOperation)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_blendmode.h" line="90">
  \brief Create a custom blend mode, which may or may not be supported by a given renderer

  \param srcColorFactor source color factor
  \param dstColorFactor destination color factor
  \param colorOperation color operation
  \param srcAlphaFactor source alpha factor
  \param dstAlphaFactor destination alpha factor
  \param alphaOperation alpha operation

  The result of the blend mode operation will be:
      dstRGB = dstRGB * dstColorFactor colorOperation srcRGB * srcColorFactor
  and
      dstA = dstA * dstAlphaFactor alphaOperation srcA * srcAlphaFactor

</member>
<member name="T:SDL_Surface" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

  \name Surface flags

  These are the currently supported flags for the ::SDL_Surface.

  \internal
  Used internally (read-only).

Evaluates to true if the surface needs to be locked before access.

 \brief A collection of pixels used in software blitting.

 \note  This structure should be treated as read-only, except for \c pixels,
        which, if not NULL, contains the raw pixel data for the surface.

</member>
<member name="F:SDL_Surface.userdata" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="78">
Application data associated with the surface 
</member>
<member name="F:SDL_Surface.locked" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="81">
information needed for surfaces requiring locks 
</member>
<member name="F:SDL_Surface.clip_rect" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="85">
clipping information 
</member>
<member name="T:SDL_BlitMap" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="88">
info for fast blit mapping to other surfaces 
</member>
<member name="F:SDL_Surface.refcount" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="91">
Reference count -- used when freeing surface 
</member>
<member name="T:SDL_Surface" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="95">
\brief The type of function used for surface blitting functions.

</member>
<member name="M:SDL_CreateRGBSurface(System.UInt32,System.Int32,System.Int32,System.Int32,System.UInt32,System.UInt32,System.UInt32,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="112">
  Allocate and free an RGB surface.

  If the depth is 4 or 8 bits, an empty palette is allocated for the surface.
  If the depth is greater than 8 bits, the pixel format is set using the
  flags '[RGB]mask'.

  If the function runs out of memory, it will return NULL.

  \param flags The \c flags are obsolete and should be set to 0.
  \param width The width in pixels of the surface to create.
  \param height The height in pixels of the surface to create.
  \param depth The depth in bits of the surface to create.
  \param Rmask The red mask of the surface to create.
  \param Gmask The green mask of the surface to create.
  \param Bmask The blue mask of the surface to create.
  \param Amask The alpha mask of the surface to create.

</member>
<member name="M:SDL_SetSurfacePalette(SDL_Surface*,SDL_Palette*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="151">
  \brief Set the palette used by a surface.

  \return 0, or -1 if the surface format doesn't use a palette.

  \note A single palette can be shared with many surfaces.

</member>
<member name="M:SDL_LockSurface(SDL_Surface*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="161">
  \brief Sets up a surface for directly accessing the pixels.

  Between calls to SDL_LockSurface() / SDL_UnlockSurface(), you can write
  to and read from \c surface-&gt;pixels, using the pixel format stored in
  \c surface-&gt;format.  Once you are done accessing the surface, you should
  use SDL_UnlockSurface() to release it.

  Not all surfaces require locking.  If SDL_MUSTLOCK(surface) evaluates
  to 0, then you can read and write to the surface at any time, and the
  pixel format of the surface will not change.

  No operating system or library calls should be made between lock/unlock
  pairs, as critical system locks may be held during this time.

  SDL_LockSurface() returns 0, or -1 if the surface couldn't be locked.

  \sa SDL_UnlockSurface()

</member>
<member name="M:SDL_UnlockSurface(SDL_Surface*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="181">
\sa SDL_LockSurface() 
</member>
<member name="M:SDL_LoadBMP_RW(SDL_RWops*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="184">
  Load a surface from a seekable SDL data stream (memory or file).

  If \c freesrc is non-zero, the stream will be closed after being read.

  The new surface should be freed with SDL_FreeSurface().

  \return the new surface, or NULL if there was an error.

</member>
<member name="M:SDL_SaveBMP_RW(SDL_Surface*,SDL_RWops*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="196">
  Load a surface from a file.

  Convenience macro.

  Save a surface to a seekable SDL data stream (memory or file).

  Surfaces with a 24-bit, 32-bit and paletted 8-bit format get saved in the
  BMP directly. Other RGB formats with 8-bit or higher get converted to a
  24-bit surface or, if they have an alpha mask or a colorkey, to a 32-bit
  surface before they are saved. YUV and paletted 1-bit and 4-bit formats are
  not supported.

  If \c freedst is non-zero, the stream will be closed after being written.

  \return 0 if successful or -1 if there was an error.

</member>
<member name="M:SDL_SetSurfaceRLE(SDL_Surface*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="219">
  Save a surface to a file.

  Convenience macro.

  \brief Sets the RLE acceleration hint for a surface.

  \return 0 on success, or -1 if the surface is not valid

  \note If RLE is enabled, colorkey and alpha blending blits are much faster,
        but the surface must be locked before directly accessing the pixels.

</member>
<member name="M:SDL_SetColorKey(SDL_Surface*,System.Int32,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="238">
  \brief Sets the color key (transparent pixel) in a blittable surface.

  \param surface The surface to update
  \param flag Non-zero to enable colorkey and 0 to disable colorkey
  \param key The transparent pixel in the native surface format

  \return 0 on success, or -1 if the surface is not valid

  You can pass SDL_RLEACCEL to enable RLE accelerated blits.

</member>
<member name="M:SDL_HasColorKey(SDL_Surface*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="252">
  \brief Returns whether the surface has a color key

  \return SDL_TRUE if the surface has a color key, or SDL_FALSE if the surface is NULL or has no color key

</member>
<member name="M:SDL_GetColorKey(SDL_Surface*,System.UInt32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="259">
  \brief Gets the color key (transparent pixel) in a blittable surface.

  \param surface The surface to update
  \param key A pointer filled in with the transparent pixel in the native
             surface format

  \return 0 on success, or -1 if the surface is not valid or colorkey is not
          enabled.

</member>
<member name="M:SDL_SetSurfaceColorMod(SDL_Surface*,System.Byte,System.Byte,System.Byte)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="272">
  \brief Set an additional color value used in blit operations.

  \param surface The surface to update.
  \param r The red color value multiplied into blit operations.
  \param g The green color value multiplied into blit operations.
  \param b The blue color value multiplied into blit operations.

  \return 0 on success, or -1 if the surface is not valid.

  \sa SDL_GetSurfaceColorMod()

</member>
<member name="M:SDL_GetSurfaceColorMod(SDL_Surface*,System.Byte*,System.Byte*,System.Byte*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="288">
  \brief Get the additional color value used in blit operations.

  \param surface The surface to query.
  \param r A pointer filled in with the current red color value.
  \param g A pointer filled in with the current green color value.
  \param b A pointer filled in with the current blue color value.

  \return 0 on success, or -1 if the surface is not valid.

  \sa SDL_SetSurfaceColorMod()

</member>
<member name="M:SDL_SetSurfaceAlphaMod(SDL_Surface*,System.Byte)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="304">
  \brief Set an additional alpha value used in blit operations.

  \param surface The surface to update.
  \param alpha The alpha value multiplied into blit operations.

  \return 0 on success, or -1 if the surface is not valid.

  \sa SDL_GetSurfaceAlphaMod()

</member>
<member name="M:SDL_GetSurfaceAlphaMod(SDL_Surface*,System.Byte*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="317">
  \brief Get the additional alpha value used in blit operations.

  \param surface The surface to query.
  \param alpha A pointer filled in with the current alpha value.

  \return 0 on success, or -1 if the surface is not valid.

  \sa SDL_SetSurfaceAlphaMod()

</member>
<member name="M:SDL_SetSurfaceBlendMode(SDL_Surface*,SDL_BlendMode)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="330">
  \brief Set the blend mode used for blit operations.

  \param surface The surface to update.
  \param blendMode ::SDL_BlendMode to use for blit blending.

  \return 0 on success, or -1 if the parameters are not valid.

  \sa SDL_GetSurfaceBlendMode()

</member>
<member name="M:SDL_GetSurfaceBlendMode(SDL_Surface*,SDL_BlendMode*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="343">
  \brief Get the blend mode used for blit operations.

  \param surface   The surface to query.
  \param blendMode A pointer filled in with the current blend mode.

  \return 0 on success, or -1 if the surface is not valid.

  \sa SDL_SetSurfaceBlendMode()

</member>
<member name="M:SDL_SetClipRect(SDL_Surface*,SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="356">
  Sets the clipping rectangle for the destination surface in a blit.

  If the clip rectangle is NULL, clipping will be disabled.

  If the clip rectangle doesn't intersect the surface, the function will
  return SDL_FALSE and blits will be completely clipped.  Otherwise the
  function returns SDL_TRUE and blits to the surface will be clipped to
  the intersection of the surface area and the clipping rectangle.

  Note that blits are automatically clipped to the edges of the source
  and destination surfaces.

</member>
<member name="M:SDL_GetClipRect(SDL_Surface*,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="372">
  Gets the clipping rectangle for the destination surface in a blit.

  \c rect must be a pointer to a valid rectangle which will be filled
  with the correct values.

</member>
<member name="M:SDL_ConvertSurface(SDL_Surface*,SDL_PixelFormat!System.Runtime.CompilerServices.IsConst*,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="386">
  Creates a new surface of the specified format, and then copies and maps
  the given surface to it so the blit of the converted surface will be as
  fast as possible.  If this function fails, it returns NULL.

  The \c flags parameter is passed to SDL_CreateRGBSurface() and has those
  semantics.  You can also pass ::SDL_RLEACCEL in the flags parameter and
  SDL will try to RLE accelerate colorkey and alpha blits in the resulting
  surface.

</member>
<member name="M:SDL_ConvertPixels(System.Int32,System.Int32,System.UInt32,System.Void!System.Runtime.CompilerServices.IsConst*,System.Int32,System.UInt32,System.Void*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="401">
 \brief Copy a block of pixels of one format to another format

  \return 0 on success, or -1 if there was an error

</member>
<member name="M:SDL_FillRect(SDL_Surface*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="412">
  Performs a fast fill of the given rectangle with \c color.

  If \c rect is NULL, the whole surface will be filled with \c color.

  The color should be a pixel of the format used by the surface, and
  can be generated by the SDL_MapRGB() function.

  \return 0 on success, or -1 on error.

</member>
<member name="M:SDL_UpperBlit(SDL_Surface*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Surface*,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="427">
 *  Performs a fast blit from the source surface to the destination surface.
 *
 *  This assumes that the source and destination rectangles are
 *  the same size.  If either \c srcrect or \c dstrect are NULL, the entire
 *  surface (\c src or \c dst) is copied.  The final blit rectangles are saved
 *  in \c srcrect and \c dstrect after all clipping is performed.
 *
 *  \return If the blit is successful, it returns 0, otherwise it returns -1.
 *
 *  The blit function should not be called on a locked surface.
 *
 *  The blit semantics for surfaces with and without blending and colorkey
 *  are defined as follows:
 *  \verbatim
    RGBA-&gt;RGB:
      Source surface blend mode set to SDL_BLENDMODE_BLEND:
        alpha-blend (using the source alpha-channel and per-surface alpha)
        SDL_SRCCOLORKEY ignored.
      Source surface blend mode set to SDL_BLENDMODE_NONE:
        copy RGB.
        if SDL_SRCCOLORKEY set, only copy the pixels matching the
        RGB values of the source color key, ignoring alpha in the
        comparison.

    RGB-&gt;RGBA:
      Source surface blend mode set to SDL_BLENDMODE_BLEND:
        alpha-blend (using the source per-surface alpha)
      Source surface blend mode set to SDL_BLENDMODE_NONE:
        copy RGB, set destination alpha to source per-surface alpha value.
      both:
        if SDL_SRCCOLORKEY set, only copy the pixels matching the
        source color key.

    RGBA-&gt;RGBA:
      Source surface blend mode set to SDL_BLENDMODE_BLEND:
        alpha-blend (using the source alpha-channel and per-surface alpha)
        SDL_SRCCOLORKEY ignored.
      Source surface blend mode set to SDL_BLENDMODE_NONE:
        copy all of RGBA to the destination.
        if SDL_SRCCOLORKEY set, only copy the pixels matching the
        RGB values of the source color key, ignoring alpha in the
        comparison.

    RGB-&gt;RGB:
      Source surface blend mode set to SDL_BLENDMODE_BLEND:
        alpha-blend (using the source per-surface alpha)
      Source surface blend mode set to SDL_BLENDMODE_NONE:
        copy RGB.
      both:
        if SDL_SRCCOLORKEY set, only copy the pixels matching the
        source color key.
    \endverbatim
 *
 *  You should call SDL_BlitSurface() unless you know exactly how SDL
 *  blitting works internally and how to use the other blit functions.

This is the public blit function, SDL_BlitSurface(), and it performs
rectangle validation and clipping before passing it to SDL_LowerBlit()

</member>
<member name="M:SDL_LowerBlit(SDL_Surface*,SDL_Rect*,SDL_Surface*,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="494">
This is a semi-private blit function and it performs low-level surface
blitting only.

</member>
<member name="M:SDL_SoftStretch(SDL_Surface*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Surface*,SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="502">
  \brief Perform a fast, low quality, stretch blit between two surfaces of the
         same pixel format.

  \note This function uses a static buffer, and is not thread-safe.

</member>
<member name="M:SDL_UpperBlitScaled(SDL_Surface*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Surface*,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="515">
This is the public scaled blit function, SDL_BlitScaled(), and it performs
rectangle validation and clipping before passing it to SDL_LowerBlitScaled()

</member>
<member name="M:SDL_LowerBlitScaled(SDL_Surface*,SDL_Rect*,SDL_Surface*,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="523">
This is a semi-private blit function and it performs low-level surface
scaled blitting only.

</member>
<member name="M:SDL_SetYUVConversionMode(SDL_YUV_CONVERSION_MODE)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="531">
\brief Set the YUV conversion mode

</member>
<member name="M:SDL_GetYUVConversionMode" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="536">
\brief Get the YUV conversion mode

</member>
<member name="M:SDL_GetYUVConversionModeForResolution(System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_surface.h" line="541">
\brief Get the YUV conversion mode, returning the correct mode for the resolution when the current conversion mode is SDL_YUV_CONVERSION_AUTOMATIC

</member>
<member name="T:SDL_Window" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="62">
  \brief The type used to identify a window

  \sa SDL_CreateWindow()
  \sa SDL_CreateWindowFrom()
  \sa SDL_DestroyWindow()
  \sa SDL_GetWindowData()
  \sa SDL_GetWindowFlags()
  \sa SDL_GetWindowGrab()
  \sa SDL_GetWindowPosition()
  \sa SDL_GetWindowSize()
  \sa SDL_GetWindowTitle()
  \sa SDL_HideWindow()
  \sa SDL_MaximizeWindow()
  \sa SDL_MinimizeWindow()
  \sa SDL_RaiseWindow()
  \sa SDL_RestoreWindow()
  \sa SDL_SetWindowData()
  \sa SDL_SetWindowFullscreen()
  \sa SDL_SetWindowGrab()
  \sa SDL_SetWindowIcon()
  \sa SDL_SetWindowPosition()
  \sa SDL_SetWindowSize()
  \sa SDL_SetWindowBordered()
  \sa SDL_SetWindowResizable()
  \sa SDL_SetWindowTitle()
  \sa SDL_ShowWindow()

</member>
<member name="D:SDL_GLContext" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="190">
\brief An opaque handle to an OpenGL context.

</member>
<member name="M:SDL_GetNumVideoDrivers" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="258">
  \brief Get the number of video drivers compiled into SDL

  \sa SDL_GetVideoDriver()

</member>
<member name="M:SDL_GetVideoDriver(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="265">
  \brief Get the name of a built in video driver.

  \note The video drivers are presented in the order in which they are
        normally checked during initialization.

  \sa SDL_GetNumVideoDrivers()

</member>
<member name="M:SDL_VideoInit(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="275">
  \brief Initialize the video subsystem, optionally specifying a video driver.

  \param driver_name Initialize a specific driver by name, or NULL for the
                     default video driver.

  \return 0 on success, -1 on error

  This function initializes the video subsystem; setting up a connection
  to the window manager, etc, and determines the available display modes
  and pixel formats, but does not initialize a window or graphics mode.

  \sa SDL_VideoQuit()

</member>
<member name="M:SDL_VideoQuit" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="291">
  \brief Shuts down the video subsystem.

  This function closes all windows, and restores the original video mode.

  \sa SDL_VideoInit()

</member>
<member name="M:SDL_GetCurrentVideoDriver" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="300">
  \brief Returns the name of the currently initialized video driver.

  \return The name of the current video driver or NULL if no driver
          has been initialized

  \sa SDL_GetNumVideoDrivers()
  \sa SDL_GetVideoDriver()

</member>
<member name="M:SDL_GetNumVideoDisplays" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="311">
  \brief Returns the number of available video displays.

  \sa SDL_GetDisplayBounds()

</member>
<member name="M:SDL_GetDisplayName(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="318">
  \brief Get the name of a display in UTF-8 encoding

  \return The name of a display, or NULL for an invalid display index.

  \sa SDL_GetNumVideoDisplays()

</member>
<member name="M:SDL_GetDisplayBounds(System.Int32,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="327">
  \brief Get the desktop area represented by a display, with the primary
         display located at 0,0

  \return 0 on success, or -1 if the index is out of range.

  \sa SDL_GetNumVideoDisplays()

</member>
<member name="M:SDL_GetDisplayUsableBounds(System.Int32,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="337">
  \brief Get the usable desktop area represented by a display, with the
         primary display located at 0,0

  This is the same area as SDL_GetDisplayBounds() reports, but with portions
  reserved by the system removed. For example, on Mac OS X, this subtracts
  the area occupied by the menu bar and dock.

  Setting a window to be fullscreen generally bypasses these unusable areas,
  so these are good guidelines for the maximum space available to a
  non-fullscreen window.

  \return 0 on success, or -1 if the index is out of range.

  \sa SDL_GetDisplayBounds()
  \sa SDL_GetNumVideoDisplays()

</member>
<member name="M:SDL_GetDisplayDPI(System.Int32,System.Single*,System.Single*,System.Single*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="356">
  \brief Get the dots/pixels-per-inch for a display

  \note Diagonal, horizontal and vertical DPI can all be optionally
        returned if the parameter is non-NULL.

  \return 0 on success, or -1 if no DPI information is available or the index is out of range.

  \sa SDL_GetNumVideoDisplays()

</member>
<member name="M:SDL_GetDisplayOrientation(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="368">
  \brief Get the orientation of a display

  \return The orientation of the display, or SDL_ORIENTATION_UNKNOWN if it isn't available.

  \sa SDL_GetNumVideoDisplays()

</member>
<member name="M:SDL_GetNumDisplayModes(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="377">
  \brief Returns the number of available display modes.

  \sa SDL_GetDisplayMode()

</member>
<member name="M:SDL_GetDisplayMode(System.Int32,System.Int32,SDL_DisplayMode*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="384">
  \brief Fill in information about a specific display mode.

  \note The display modes are sorted in this priority:
        \li bits per pixel -&gt; more colors to fewer colors
        \li width -&gt; largest to smallest
        \li height -&gt; largest to smallest
        \li refresh rate -&gt; highest to lowest

  \sa SDL_GetNumDisplayModes()

</member>
<member name="M:SDL_GetDesktopDisplayMode(System.Int32,SDL_DisplayMode*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="398">
\brief Fill in information about the desktop display mode.

</member>
<member name="M:SDL_GetCurrentDisplayMode(System.Int32,SDL_DisplayMode*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="403">
\brief Fill in information about the current display mode.

</member>
<member name="M:SDL_GetClosestDisplayMode(System.Int32,SDL_DisplayMode!System.Runtime.CompilerServices.IsConst*,SDL_DisplayMode*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="409">
  \brief Get the closest match to the requested display mode.

  \param displayIndex The index of display from which mode should be queried.
  \param mode The desired display mode
  \param closest A pointer to a display mode to be filled in with the closest
                 match of the available display modes.

  \return The passed in value \c closest, or NULL if no matching video mode
          was available.

  The available display modes are scanned, and \c closest is filled in with the
  closest mode matching the requested mode and returned.  The mode format and
  refresh_rate default to the desktop mode if they are 0.  The modes are
  scanned with size being first priority, format being second priority, and
  finally checking the refresh_rate.  If all the available modes are too
  small, then NULL is returned.

  \sa SDL_GetNumDisplayModes()
  \sa SDL_GetDisplayMode()

</member>
<member name="M:SDL_GetWindowDisplayIndex(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="432">
  \brief Get the display index associated with a window.

  \return the display index of the display containing the center of the
          window, or -1 on error.

</member>
<member name="M:SDL_SetWindowDisplayMode(SDL_Window*,SDL_DisplayMode!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="440">
  \brief Set the display mode used when a fullscreen window is visible.

  By default the window's dimensions and the desktop format and refresh rate
  are used.

  \param window The window for which the display mode should be set.
  \param mode The mode to use, or NULL for the default mode.

  \return 0 on success, or -1 if setting the display mode failed.

  \sa SDL_GetWindowDisplayMode()
  \sa SDL_SetWindowFullscreen()

</member>
<member name="M:SDL_GetWindowDisplayMode(SDL_Window*,SDL_DisplayMode*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="458">
  \brief Fill in information about the display mode used when a fullscreen
         window is visible.

  \sa SDL_SetWindowDisplayMode()
  \sa SDL_SetWindowFullscreen()

</member>
<member name="M:SDL_GetWindowPixelFormat(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="468">
\brief Get the pixel format associated with the window.

</member>
<member name="M:SDL_CreateWindow(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32,System.Int32,System.Int32,System.Int32,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="473">
  \brief Create a window with the specified position, dimensions, and flags.

  \param title The title of the window, in UTF-8 encoding.
  \param x     The x position of the window, ::SDL_WINDOWPOS_CENTERED, or
               ::SDL_WINDOWPOS_UNDEFINED.
  \param y     The y position of the window, ::SDL_WINDOWPOS_CENTERED, or
               ::SDL_WINDOWPOS_UNDEFINED.
  \param w     The width of the window, in screen coordinates.
  \param h     The height of the window, in screen coordinates.
  \param flags The flags for the window, a mask of any of the following:
               ::SDL_WINDOW_FULLSCREEN,    ::SDL_WINDOW_OPENGL,
               ::SDL_WINDOW_HIDDEN,        ::SDL_WINDOW_BORDERLESS,
               ::SDL_WINDOW_RESIZABLE,     ::SDL_WINDOW_MAXIMIZED,
               ::SDL_WINDOW_MINIMIZED,     ::SDL_WINDOW_INPUT_GRABBED,
               ::SDL_WINDOW_ALLOW_HIGHDPI, ::SDL_WINDOW_VULKAN.

  \return The created window, or NULL if window creation failed.

  If the window is created with the SDL_WINDOW_ALLOW_HIGHDPI flag, its size
  in pixels may differ from its size in screen coordinates on platforms with
  high-DPI support (e.g. iOS and Mac OS X). Use SDL_GetWindowSize() to query
  the client area's size in screen coordinates, and SDL_GL_GetDrawableSize(),
  SDL_Vulkan_GetDrawableSize(), or SDL_GetRendererOutputSize() to query the
  drawable size in pixels.

  If the window is created with any of the SDL_WINDOW_OPENGL or
  SDL_WINDOW_VULKAN flags, then the corresponding LoadLibrary function
  (SDL_GL_LoadLibrary or SDL_Vulkan_LoadLibrary) is called and the
  corresponding UnloadLibrary function is called by SDL_DestroyWindow().

  If SDL_WINDOW_VULKAN is specified and there isn't a working Vulkan driver,
  SDL_CreateWindow() will fail because SDL_Vulkan_LoadLibrary() will fail.

  \note On non-Apple devices, SDL requires you to either not link to the
        Vulkan loader or link to a dynamic library version. This limitation
        may be removed in a future version of SDL.

  \sa SDL_DestroyWindow()
  \sa SDL_GL_LoadLibrary()
  \sa SDL_Vulkan_LoadLibrary()

</member>
<member name="M:SDL_CreateWindowFrom(System.Void!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="519">
  \brief Create an SDL window from an existing native window.

  \param data A pointer to driver-dependent window creation data

  \return The created window, or NULL if window creation failed.

  \sa SDL_DestroyWindow()

</member>
<member name="M:SDL_GetWindowID(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="530">
\brief Get the numeric ID of a window, for logging purposes.

</member>
<member name="M:SDL_GetWindowFromID(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="535">
\brief Get a window from a stored ID, or NULL if it doesn't exist.

</member>
<member name="M:SDL_GetWindowFlags(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="540">
\brief Get the window flags.

</member>
<member name="M:SDL_SetWindowTitle(SDL_Window*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="545">
  \brief Set the title of a window, in UTF-8 format.

  \sa SDL_GetWindowTitle()

</member>
<member name="M:SDL_GetWindowTitle(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="553">
  \brief Get the title of a window, in UTF-8 format.

  \sa SDL_SetWindowTitle()

</member>
<member name="M:SDL_SetWindowIcon(SDL_Window*,SDL_Surface*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="560">
  \brief Set the icon for a window.

  \param window The window for which the icon should be set.
  \param icon The icon for the window.

</member>
<member name="M:SDL_SetWindowData(SDL_Window*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="569">
  \brief Associate an arbitrary named pointer with a window.

  \param window   The window to associate with the pointer.
  \param name     The name of the pointer.
  \param userdata The associated pointer.

  \return The previous value associated with 'name'

  \note The name is case-sensitive.

  \sa SDL_GetWindowData()

</member>
<member name="M:SDL_GetWindowData(SDL_Window*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="586">
  \brief Retrieve the data pointer associated with a window.

  \param window   The window to query.
  \param name     The name of the pointer.

  \return The value associated with 'name'

  \sa SDL_SetWindowData()

</member>
<member name="M:SDL_SetWindowPosition(SDL_Window*,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="599">
  \brief Set the position of a window.

  \param window   The window to reposition.
  \param x        The x coordinate of the window in screen coordinates, or
                  ::SDL_WINDOWPOS_CENTERED or ::SDL_WINDOWPOS_UNDEFINED.
  \param y        The y coordinate of the window in screen coordinates, or
                  ::SDL_WINDOWPOS_CENTERED or ::SDL_WINDOWPOS_UNDEFINED.

  \note The window coordinate origin is the upper left of the display.

  \sa SDL_GetWindowPosition()

</member>
<member name="M:SDL_GetWindowPosition(SDL_Window*,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="615">
  \brief Get the position of a window.

  \param window   The window to query.
  \param x        Pointer to variable for storing the x position, in screen
                  coordinates. May be NULL.
  \param y        Pointer to variable for storing the y position, in screen
                  coordinates. May be NULL.

  \sa SDL_SetWindowPosition()

</member>
<member name="M:SDL_SetWindowSize(SDL_Window*,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="629">
  \brief Set the size of a window's client area.

  \param window   The window to resize.
  \param w        The width of the window, in screen coordinates. Must be &gt;0.
  \param h        The height of the window, in screen coordinates. Must be &gt;0.

  \note Fullscreen windows automatically match the size of the display mode,
        and you should use SDL_SetWindowDisplayMode() to change their size.

  The window size in screen coordinates may differ from the size in pixels, if
  the window was created with SDL_WINDOW_ALLOW_HIGHDPI on a platform with
  high-dpi support (e.g. iOS or OS X). Use SDL_GL_GetDrawableSize() or
  SDL_GetRendererOutputSize() to get the real client area size in pixels.

  \sa SDL_GetWindowSize()
  \sa SDL_SetWindowDisplayMode()

</member>
<member name="M:SDL_GetWindowSize(SDL_Window*,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="650">
  \brief Get the size of a window's client area.

  \param window   The window to query.
  \param w        Pointer to variable for storing the width, in screen
                  coordinates. May be NULL.
  \param h        Pointer to variable for storing the height, in screen
                  coordinates. May be NULL.

  The window size in screen coordinates may differ from the size in pixels, if
  the window was created with SDL_WINDOW_ALLOW_HIGHDPI on a platform with
  high-dpi support (e.g. iOS or OS X). Use SDL_GL_GetDrawableSize() or
  SDL_GetRendererOutputSize() to get the real client area size in pixels.

  \sa SDL_SetWindowSize()

</member>
<member name="M:SDL_GetWindowBordersSize(SDL_Window*,System.Int32*,System.Int32*,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="669">
  \brief Get the size of a window's borders (decorations) around the client area.

  \param window The window to query.
  \param top Pointer to variable for storing the size of the top border. NULL is permitted.
  \param left Pointer to variable for storing the size of the left border. NULL is permitted.
  \param bottom Pointer to variable for storing the size of the bottom border. NULL is permitted.
  \param right Pointer to variable for storing the size of the right border. NULL is permitted.

  \return 0 on success, or -1 if getting this information is not supported.

  \note if this function fails (returns -1), the size values will be
        initialized to 0, 0, 0, 0 (if a non-NULL pointer is provided), as
        if the window in question was borderless.

</member>
<member name="M:SDL_SetWindowMinimumSize(SDL_Window*,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="688">
  \brief Set the minimum size of a window's client area.

  \param window    The window to set a new minimum size.
  \param min_w     The minimum width of the window, must be &gt;0
  \param min_h     The minimum height of the window, must be &gt;0

  \note You can't change the minimum size of a fullscreen window, it
        automatically matches the size of the display mode.

  \sa SDL_GetWindowMinimumSize()
  \sa SDL_SetWindowMaximumSize()

</member>
<member name="M:SDL_GetWindowMinimumSize(SDL_Window*,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="704">
  \brief Get the minimum size of a window's client area.

  \param window   The window to query.
  \param w        Pointer to variable for storing the minimum width, may be NULL
  \param h        Pointer to variable for storing the minimum height, may be NULL

  \sa SDL_GetWindowMaximumSize()
  \sa SDL_SetWindowMinimumSize()

</member>
<member name="M:SDL_SetWindowMaximumSize(SDL_Window*,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="717">
  \brief Set the maximum size of a window's client area.

  \param window    The window to set a new maximum size.
  \param max_w     The maximum width of the window, must be &gt;0
  \param max_h     The maximum height of the window, must be &gt;0

  \note You can't change the maximum size of a fullscreen window, it
        automatically matches the size of the display mode.

  \sa SDL_GetWindowMaximumSize()
  \sa SDL_SetWindowMinimumSize()

</member>
<member name="M:SDL_GetWindowMaximumSize(SDL_Window*,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="733">
  \brief Get the maximum size of a window's client area.

  \param window   The window to query.
  \param w        Pointer to variable for storing the maximum width, may be NULL
  \param h        Pointer to variable for storing the maximum height, may be NULL

  \sa SDL_GetWindowMinimumSize()
  \sa SDL_SetWindowMaximumSize()

</member>
<member name="M:SDL_SetWindowBordered(SDL_Window*,SDL_bool)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="746">
  \brief Set the border state of a window.

  This will add or remove the window's SDL_WINDOW_BORDERLESS flag and
  add or remove the border from the actual window. This is a no-op if the
  window's border already matches the requested state.

  \param window The window of which to change the border state.
  \param bordered SDL_FALSE to remove border, SDL_TRUE to add border.

  \note You can't change the border state of a fullscreen window.

  \sa SDL_GetWindowFlags()

</member>
<member name="M:SDL_SetWindowResizable(SDL_Window*,SDL_bool)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="763">
  \brief Set the user-resizable state of a window.

  This will add or remove the window's SDL_WINDOW_RESIZABLE flag and
  allow/disallow user resizing of the window. This is a no-op if the
  window's resizable state already matches the requested state.

  \param window The window of which to change the resizable state.
  \param resizable SDL_TRUE to allow resizing, SDL_FALSE to disallow.

  \note You can't change the resizable state of a fullscreen window.

  \sa SDL_GetWindowFlags()

</member>
<member name="M:SDL_ShowWindow(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="780">
  \brief Show a window.

  \sa SDL_HideWindow()

</member>
<member name="M:SDL_HideWindow(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="787">
  \brief Hide a window.

  \sa SDL_ShowWindow()

</member>
<member name="M:SDL_RaiseWindow(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="794">
\brief Raise a window above other windows and set the input focus.

</member>
<member name="M:SDL_MaximizeWindow(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="799">
  \brief Make a window as large as possible.

  \sa SDL_RestoreWindow()

</member>
<member name="M:SDL_MinimizeWindow(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="806">
  \brief Minimize a window to an iconic representation.

  \sa SDL_RestoreWindow()

</member>
<member name="M:SDL_RestoreWindow(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="813">
  \brief Restore the size and position of a minimized or maximized window.

  \sa SDL_MaximizeWindow()
  \sa SDL_MinimizeWindow()

</member>
<member name="M:SDL_SetWindowFullscreen(SDL_Window*,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="821">
  \brief Set a window's fullscreen state.

  \return 0 on success, or -1 if setting the display mode failed.

  \sa SDL_SetWindowDisplayMode()
  \sa SDL_GetWindowDisplayMode()

</member>
<member name="M:SDL_GetWindowSurface(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="832">
  \brief Get the SDL surface associated with the window.

  \return The window's framebuffer surface, or NULL on error.

  A new surface will be created with the optimal format for the window,
  if necessary. This surface will be freed when the window is destroyed.

  \note You may not combine this with 3D or the rendering API on this window.

  \sa SDL_UpdateWindowSurface()
  \sa SDL_UpdateWindowSurfaceRects()

</member>
<member name="M:SDL_UpdateWindowSurface(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="847">
  \brief Copy the window surface to the screen.

  \return 0 on success, or -1 on error.

  \sa SDL_GetWindowSurface()
  \sa SDL_UpdateWindowSurfaceRects()

</member>
<member name="M:SDL_UpdateWindowSurfaceRects(SDL_Window*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="857">
  \brief Copy a number of rectangles on the window surface to the screen.

  \return 0 on success, or -1 on error.

  \sa SDL_GetWindowSurface()
  \sa SDL_UpdateWindowSurface()

</member>
<member name="M:SDL_SetWindowGrab(SDL_Window*,SDL_bool)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="869">
  \brief Set a window's input grab mode.

  \param window The window for which the input grab mode should be set.
  \param grabbed This is SDL_TRUE to grab input, and SDL_FALSE to release input.

  If the caller enables a grab while another window is currently grabbed,
  the other window loses its grab in favor of the caller's window.

  \sa SDL_GetWindowGrab()

</member>
<member name="M:SDL_GetWindowGrab(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="883">
  \brief Get a window's input grab mode.

  \return This returns SDL_TRUE if input is grabbed, and SDL_FALSE otherwise.

  \sa SDL_SetWindowGrab()

</member>
<member name="M:SDL_GetGrabbedWindow" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="892">
  \brief Get the window that currently has an input grab enabled.

  \return This returns the window if input is grabbed, and NULL otherwise.

  \sa SDL_SetWindowGrab()

</member>
<member name="M:SDL_SetWindowBrightness(SDL_Window*,System.Single)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="901">
  \brief Set the brightness (gamma correction) for a window.

  \return 0 on success, or -1 if setting the brightness isn't supported.

  \sa SDL_GetWindowBrightness()
  \sa SDL_SetWindowGammaRamp()

</member>
<member name="M:SDL_GetWindowBrightness(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="911">
  \brief Get the brightness (gamma correction) for a window.

  \return The last brightness value passed to SDL_SetWindowBrightness()

  \sa SDL_SetWindowBrightness()

</member>
<member name="M:SDL_SetWindowOpacity(SDL_Window*,System.Single)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="920">
  \brief Set the opacity for a window

  \param window The window which will be made transparent or opaque
  \param opacity Opacity (0.0f - transparent, 1.0f - opaque) This will be
                 clamped internally between 0.0f and 1.0f.

  \return 0 on success, or -1 if setting the opacity isn't supported.

  \sa SDL_GetWindowOpacity()

</member>
<member name="M:SDL_GetWindowOpacity(SDL_Window*,System.Single*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="933">
  \brief Get the opacity of a window.

  If transparency isn't supported on this platform, opacity will be reported
  as 1.0f without error.

  \param window The window in question.
  \param out_opacity Opacity (0.0f - transparent, 1.0f - opaque)

  \return 0 on success, or -1 on error (invalid window, etc).

  \sa SDL_SetWindowOpacity()

</member>
<member name="M:SDL_SetWindowModalFor(SDL_Window*,SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="948">
  \brief Sets the window as a modal for another window (TODO: reconsider this function and/or its name)

  \param modal_window The window that should be modal
  \param parent_window The parent window

  \return 0 on success, or -1 otherwise.

</member>
<member name="M:SDL_SetWindowInputFocus(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="958">
  \brief Explicitly sets input focus to the window.

  You almost certainly want SDL_RaiseWindow() instead of this function. Use
  this with caution, as you might give focus to a window that's completely
  obscured by other windows.

  \param window The window that should get the input focus

  \return 0 on success, or -1 otherwise.
  \sa SDL_RaiseWindow()

</member>
<member name="M:SDL_SetWindowGammaRamp(SDL_Window*,System.UInt16!System.Runtime.CompilerServices.IsConst*,System.UInt16!System.Runtime.CompilerServices.IsConst*,System.UInt16!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="972">
  \brief Set the gamma ramp for a window.

  \param window The window for which the gamma ramp should be set.
  \param red The translation table for the red channel, or NULL.
  \param green The translation table for the green channel, or NULL.
  \param blue The translation table for the blue channel, or NULL.

  \return 0 on success, or -1 if gamma ramps are unsupported.

  Set the gamma translation table for the red, green, and blue channels
  of the video hardware.  Each table is an array of 256 16-bit quantities,
  representing a mapping between the input and output for that channel.
  The input is the index into the array, and the output is the 16-bit
  gamma value at that index, scaled to the output color precision.

  \sa SDL_GetWindowGammaRamp()

</member>
<member name="M:SDL_GetWindowGammaRamp(SDL_Window*,System.UInt16*,System.UInt16*,System.UInt16*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="995">
  \brief Get the gamma ramp for a window.

  \param window The window from which the gamma ramp should be queried.
  \param red   A pointer to a 256 element array of 16-bit quantities to hold
               the translation table for the red channel, or NULL.
  \param green A pointer to a 256 element array of 16-bit quantities to hold
               the translation table for the green channel, or NULL.
  \param blue  A pointer to a 256 element array of 16-bit quantities to hold
               the translation table for the blue channel, or NULL.

  \return 0 on success, or -1 if gamma ramps are unsupported.

  \sa SDL_SetWindowGammaRamp()

</member>
<member name="D:SDL_HitTest" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1034">
  \brief Callback used for hit-testing.

  \sa SDL_SetWindowHitTest

</member>
<member name="M:SDL_SetWindowHitTest(SDL_Window*,=FUNC:SDL_HitTestResult(SDL_Window*,SDL_Point!System.Runtime.CompilerServices.IsConst*,System.Void*),System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1043">
  \brief Provide a callback that decides if a window region has special properties.

  Normally windows are dragged and resized by decorations provided by the
  system window manager (a title bar, borders, etc), but for some apps, it
  makes sense to drag them from somewhere else inside the window itself; for
  example, one might have a borderless window that wants to be draggable
  from any part, or simulate its own title bar, etc.

  This function lets the app provide a callback that designates pieces of
  a given window as special. This callback is run during event processing
  if we need to tell the OS to treat a region of the window specially; the
  use of this callback is known as "hit testing."

  Mouse input may not be delivered to your application if it is within
  a special area; the OS will often apply that input to moving the window or
  resizing the window and not deliver it to the application.

  Specifying NULL for a callback disables hit-testing. Hit-testing is
  disabled by default.

  Platforms that don't support this functionality will return -1
  unconditionally, even if you're attempting to disable hit-testing.

  Your callback may fire at any time, and its firing does not indicate any
  specific behavior (for example, on Windows, this certainly might fire
  when the OS is deciding whether to drag your window, but it fires for lots
  of other reasons, too, some unrelated to anything you probably care about
  _and when the mouse isn't actually at the location it is testing_).
  Since this can fire at any time, you should try to keep your callback
  efficient, devoid of allocations, etc.

  \param window The window to set hit-testing on.
  \param callback The callback to call when doing a hit-test.
  \param callback_data An app-defined void pointer passed to the callback.
  \return 0 on success, -1 on error (including unsupported).

</member>
<member name="M:SDL_DestroyWindow(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1084">
\brief Destroy a window.

</member>
<member name="M:SDL_IsScreenSaverEnabled" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1090">
  \brief Returns whether the screensaver is currently enabled (default off).

  \sa SDL_EnableScreenSaver()
  \sa SDL_DisableScreenSaver()

</member>
<member name="M:SDL_EnableScreenSaver" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1098">
  \brief Allow the screen to be blanked by a screensaver

  \sa SDL_IsScreenSaverEnabled()
  \sa SDL_DisableScreenSaver()

</member>
<member name="M:SDL_DisableScreenSaver" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1106">
  \brief Prevent the screen from being blanked by a screensaver

  \sa SDL_IsScreenSaverEnabled()
  \sa SDL_EnableScreenSaver()

</member>
<member name="M:SDL_GL_LoadLibrary(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1115">
\name OpenGL support functions

  \brief Dynamically load an OpenGL library.

  \param path The platform dependent OpenGL library name, or NULL to open the
              default OpenGL library.

  \return 0 on success, or -1 if the library couldn't be loaded.

  This should be done after initializing the video driver, but before
  creating any OpenGL windows.  If no OpenGL library is loaded, the default
  library will be loaded upon creation of the first OpenGL window.

  \note If you do this, you need to retrieve all of the GL functions used in
        your program from the dynamic library using SDL_GL_GetProcAddress().

  \sa SDL_GL_GetProcAddress()
  \sa SDL_GL_UnloadLibrary()

</member>
<member name="M:SDL_GL_GetProcAddress(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1140">
\brief Get the address of an OpenGL function.

</member>
<member name="M:SDL_GL_UnloadLibrary" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1145">
  \brief Unload the OpenGL library previously loaded by SDL_GL_LoadLibrary().

  \sa SDL_GL_LoadLibrary()

</member>
<member name="M:SDL_GL_ExtensionSupported(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1152">
\brief Return true if an OpenGL extension is supported for the current
       context.

</member>
<member name="M:SDL_GL_ResetAttributes" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1159">
\brief Reset all previously set OpenGL context attributes to their default values

</member>
<member name="M:SDL_GL_SetAttribute(SDL_GLattr,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1164">
  \brief Set an OpenGL window attribute before window creation.

  \return 0 on success, or -1 if the attribute could not be set.

</member>
<member name="M:SDL_GL_GetAttribute(SDL_GLattr,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1171">
  \brief Get the actual value for an attribute from the current context.

  \return 0 on success, or -1 if the attribute could not be retrieved.
          The integer at \c value will be modified in either case.

</member>
<member name="M:SDL_GL_CreateContext(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1179">
  \brief Create an OpenGL context for use with an OpenGL window, and make it
         current.

  \sa SDL_GL_DeleteContext()

</member>
<member name="M:SDL_GL_MakeCurrent(SDL_Window*,System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1188">
  \brief Set up an OpenGL context for rendering into an OpenGL window.

  \note The context must have been created with a compatible window.

</member>
<member name="M:SDL_GL_GetCurrentWindow" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1196">
\brief Get the currently active OpenGL window.

</member>
<member name="M:SDL_GL_GetCurrentContext" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1201">
\brief Get the currently active OpenGL context.

</member>
<member name="M:SDL_GL_GetDrawableSize(SDL_Window*,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1206">
  \brief Get the size of a window's underlying drawable in pixels (for use
         with glViewport).

  \param window   Window from which the drawable size should be queried
  \param w        Pointer to variable for storing the width in pixels, may be NULL
  \param h        Pointer to variable for storing the height in pixels, may be NULL

 This may differ from SDL_GetWindowSize() if we're rendering to a high-DPI
 drawable, i.e. the window was created with SDL_WINDOW_ALLOW_HIGHDPI on a
 platform with high-DPI support (Apple calls this "Retina"), and not disabled
 by the SDL_HINT_VIDEO_HIGHDPI_DISABLED hint.

  \sa SDL_GetWindowSize()
  \sa SDL_CreateWindow()

</member>
<member name="M:SDL_GL_SetSwapInterval(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1225">
  \brief Set the swap interval for the current OpenGL context.

  \param interval 0 for immediate updates, 1 for updates synchronized with the
                  vertical retrace. If the system supports it, you may
                  specify -1 to allow late swaps to happen immediately
                  instead of waiting for the next retrace.

  \return 0 on success, or -1 if setting the swap interval is not supported.

  \sa SDL_GL_GetSwapInterval()

</member>
<member name="M:SDL_GL_GetSwapInterval" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1239">
  \brief Get the swap interval for the current OpenGL context.

  \return 0 if there is no vertical retrace synchronization, 1 if the buffer
          swap is synchronized with the vertical retrace, and -1 if late
          swaps happen immediately instead of waiting for the next retrace.
          If the system can't determine the swap interval, or there isn't a
          valid current context, this will return 0 as a safe default.

  \sa SDL_GL_SetSwapInterval()

</member>
<member name="M:SDL_GL_SwapWindow(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1252">
\brief Swap the OpenGL buffers for a window, if double-buffering is
       supported.

</member>
<member name="M:SDL_GL_DeleteContext(System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_video.h" line="1258">
  \brief Delete an OpenGL context.

  \sa SDL_GL_CreateContext()

</member>
<member name="F:SDL_SCANCODE_A" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_scancode.h" line="47">
  \name Usage page 0x07

  These values are from usage page 0x07 (USB keyboard page).

</member>
<member name="F:SDL_SCANCODE_AUDIONEXT" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_scancode.h" line="344">
  \name Usage page 0x0C

  These values are mapped from usage page 0x0C (USB consumer page).

</member>
<member name="F:SDL_SCANCODE_BRIGHTNESSDOWN" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_scancode.h" line="371">
  \name Walther keys

  These are values that Christian Walther added (for mac keyboard?).

</member>
<member name="F:SDL_SCANCODE_AUDIOREWIND" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_scancode.h" line="393">
  \name Usage page 0x0C (additional media keys)

  These values are mapped from usage page 0x0C (USB consumer page).

</member>
<member name="D:SDL_Keycode" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keycode.h" line="34">
  \brief The SDL virtual key representation.

  Values of this type are used to represent keyboard keys using the current
  layout of the keyboard.  These values include Unicode values representing
  the unmodified character that would be generated by pressing the key, or
  an SDLK_* constant for those keys that do not generate characters.

  A special exception is the number keys at the top of the keyboard which
  always map to SDLK_0...SDLK_9, regardless of layout.

</member>
<member name="T:SDL_Keysym" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\begin_code.h" line="22">
  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

  \brief The SDL keysym structure, used in key events.

  \note  If you are looking for translated character input, see the ::SDL_TEXTINPUT event.

</member>
<member name="M:SDL_GetKeyboardFocus" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="57">
\brief Get the window which currently has keyboard focus.

</member>
<!-- 'M:SDL_GetKeyboardState(System.Int32*)' 멤버에 대한 잘못된 형식의 XML 문서 주석을 삭제합니다.-->
<member name="M:SDL_GetModState" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="79">
\brief Get the current key modifier state for the keyboard.

</member>
<member name="M:SDL_SetModState(SDL_Keymod)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="84">
  \brief Set the current key modifier state for the keyboard.

  \note This does not change the keyboard state, only the key modifier flags.

</member>
<member name="M:SDL_GetKeyFromScancode(SDL_Scancode)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="91">
  \brief Get the key code corresponding to the given scancode according
         to the current keyboard layout.

  See ::SDL_Keycode for details.

  \sa SDL_GetKeyName()

</member>
<member name="M:SDL_GetScancodeFromKey(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="101">
  \brief Get the scancode corresponding to the given key code according to the
         current keyboard layout.

  See ::SDL_Scancode for details.

  \sa SDL_GetScancodeName()

</member>
<member name="M:SDL_GetScancodeName(SDL_Scancode)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="111">
  \brief Get a human-readable name for a scancode.

  \return A pointer to the name for the scancode.
          If the scancode doesn't have a name, this function returns
          an empty string ("").

  \sa SDL_Scancode

</member>
<member name="M:SDL_GetScancodeFromName(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="122">
  \brief Get a scancode from a human-readable name

  \return scancode, or SDL_SCANCODE_UNKNOWN if the name wasn't recognized

  \sa SDL_Scancode

</member>
<member name="M:SDL_GetKeyName(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="131">
  \brief Get a human-readable name for a key.

  \return A pointer to a UTF-8 string that stays valid at least until the next
          call to this function. If you need it around any longer, you must
          copy it.  If the key doesn't have a name, this function returns an
          empty string ("").

  \sa SDL_Keycode

</member>
<member name="M:SDL_GetKeyFromName(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="143">
  \brief Get a key code from a human-readable name

  \return key code, or SDLK_UNKNOWN if the name wasn't recognized

  \sa SDL_Keycode

</member>
<member name="M:SDL_StartTextInput" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="152">
  \brief Start accepting Unicode text input events.
         This function will show the on-screen keyboard if supported.

  \sa SDL_StopTextInput()
  \sa SDL_SetTextInputRect()
  \sa SDL_HasScreenKeyboardSupport()

</member>
<member name="M:SDL_IsTextInputActive" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="162">
  \brief Return whether or not Unicode text input events are enabled.

  \sa SDL_StartTextInput()
  \sa SDL_StopTextInput()

</member>
<member name="M:SDL_StopTextInput" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="170">
  \brief Stop receiving any text input events.
         This function will hide the on-screen keyboard if supported.

  \sa SDL_StartTextInput()
  \sa SDL_HasScreenKeyboardSupport()

</member>
<member name="M:SDL_SetTextInputRect(SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="179">
  \brief Set the rectangle used to type Unicode text inputs.
         This is used as a hint for IME and on-screen keyboard placement.

  \sa SDL_StartTextInput()

</member>
<member name="M:SDL_HasScreenKeyboardSupport" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="187">
  \brief Returns whether the platform has some screen keyboard support.

  \return SDL_TRUE if some keyboard support is available else SDL_FALSE.

  \note Not all screen keyboard functions are supported on all platforms.

  \sa SDL_IsScreenKeyboardShown()

</member>
<member name="M:SDL_IsScreenKeyboardShown(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_keyboard.h" line="198">
  \brief Returns whether the screen keyboard is shown for given window.

  \param window The window for which screen keyboard should be queried.

  \return SDL_TRUE if screen keyboard is shown else SDL_FALSE.

  \sa SDL_HasScreenKeyboardSupport()

</member>
<member name="T:SDL_Cursor" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_mouse.h

  Include file for SDL mouse event handling.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="M:SDL_GetMouseFocus" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="74">
\brief Get the window which currently has mouse focus.

</member>
<member name="M:SDL_GetMouseState(System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="79">
  \brief Retrieve the current state of the mouse.

  The current button state is returned as a button bitmask, which can
  be tested using the SDL_BUTTON(X) macros, and x and y are set to the
  mouse cursor position relative to the focus window for the currently
  selected mouse.  You can pass NULL for either x or y.

</member>
<member name="M:SDL_GetGlobalMouseState(System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="89">
  \brief Get the current state of the mouse, in relation to the desktop

  This works just like SDL_GetMouseState(), but the coordinates will be
  reported relative to the top-left of the desktop. This can be useful if
  you need to track the mouse outside of a specific window and
  SDL_CaptureMouse() doesn't fit your needs. For example, it could be
  useful if you need to track the mouse while dragging a window, where
  coordinates relative to a window might not be in sync at all times.

  \note SDL_GetMouseState() returns the mouse position as SDL understands
        it from the last pump of the event queue. This function, however,
        queries the OS for the current mouse position, and as such, might
        be a slightly less efficient function. Unless you know what you're
        doing and have a good reason to use this function, you probably want
        SDL_GetMouseState() instead.

  \param x Returns the current X coord, relative to the desktop. Can be NULL.
  \param y Returns the current Y coord, relative to the desktop. Can be NULL.
  \return The current button state as a bitmask, which can be tested using the SDL_BUTTON(X) macros.

  \sa SDL_GetMouseState

</member>
<member name="M:SDL_GetRelativeMouseState(System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="114">
  \brief Retrieve the relative state of the mouse.

  The current button state is returned as a button bitmask, which can
  be tested using the SDL_BUTTON(X) macros, and x and y are set to the
  mouse deltas since the last call to SDL_GetRelativeMouseState().

</member>
<member name="M:SDL_WarpMouseInWindow(SDL_Window*,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="123">
  \brief Moves the mouse to the given position within the window.

  \param window The window to move the mouse into, or NULL for the current mouse focus
  \param x The x coordinate within the window
  \param y The y coordinate within the window

  \note This function generates a mouse motion event

</member>
<member name="M:SDL_WarpMouseGlobal(System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="135">
  \brief Moves the mouse to the given position in global screen space.

  \param x The x coordinate
  \param y The y coordinate
  \return 0 on success, -1 on error (usually: unsupported by a platform).

  \note This function generates a mouse motion event

</member>
<member name="M:SDL_SetRelativeMouseMode(SDL_bool)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="146">
  \brief Set relative mouse mode.

  \param enabled Whether or not to enable relative mode

  \return 0 on success, or -1 if relative mode is not supported.

  While the mouse is in relative mode, the cursor is hidden, and the
  driver will try to report continuous motion in the current window.
  Only relative motion events will be delivered, the mouse position
  will not change.

  \note This function will flush any pending mouse motion.

  \sa SDL_GetRelativeMouseMode()

</member>
<member name="M:SDL_CaptureMouse(SDL_bool)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="164">
  \brief Capture the mouse, to track input outside an SDL window.

  \param enabled Whether or not to enable capturing

  Capturing enables your app to obtain mouse events globally, instead of
  just within your window. Not all video targets support this function.
  When capturing is enabled, the current window will get all mouse events,
  but unlike relative mode, no change is made to the cursor and it is
  not restrained to your window.

  This function may also deny mouse input to other windows--both those in
  your application and others on the system--so you should use this
  function sparingly, and in small bursts. For example, you might want to
  track the mouse while the user is dragging something, until the user
  releases a mouse button. It is not recommended that you capture the mouse
  for long periods of time, such as the entire time your app is running.

  While captured, mouse events still report coordinates relative to the
  current (foreground) window, but those coordinates may be outside the
  bounds of the window (including negative values). Capturing is only
  allowed for the foreground window. If the window loses focus while
  capturing, the capture will be disabled automatically.

  While capturing is enabled, the current window will have the
  SDL_WINDOW_MOUSE_CAPTURE flag set.

  \return 0 on success, or -1 if not supported.

</member>
<member name="M:SDL_GetRelativeMouseMode" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="195">
  \brief Query whether relative mouse mode is enabled.

  \sa SDL_SetRelativeMouseMode()

</member>
<member name="M:SDL_CreateCursor(System.Byte!System.Runtime.CompilerServices.IsConst*,System.Byte!System.Runtime.CompilerServices.IsConst*,System.Int32,System.Int32,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="202">
  \brief Create a cursor, using the specified bitmap data and
         mask (in MSB format).

  The cursor width must be a multiple of 8 bits.

  The cursor is created in black and white according to the following:
  <table>
  <tr><td> data </td><td> mask </td><td> resulting pixel on screen </td></tr>
  <tr><td>  0   </td><td>  1   </td><td> White </td></tr>
  <tr><td>  1   </td><td>  1   </td><td> Black </td></tr>
  <tr><td>  0   </td><td>  0   </td><td> Transparent </td></tr>
  <tr><td>  1   </td><td>  0   </td><td> Inverted color if possible, black
                                         if not. </td></tr>
  </table>

  \sa SDL_FreeCursor()

</member>
<member name="M:SDL_CreateColorCursor(SDL_Surface*,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="225">
  \brief Create a color cursor.

  \sa SDL_FreeCursor()

</member>
<member name="M:SDL_CreateSystemCursor(SDL_SystemCursor)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="234">
  \brief Create a system cursor.

  \sa SDL_FreeCursor()

</member>
<member name="M:SDL_SetCursor(SDL_Cursor*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="241">
\brief Set the active cursor.

</member>
<member name="M:SDL_GetCursor" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="246">
\brief Return the active cursor.

</member>
<member name="M:SDL_GetDefaultCursor" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="251">
\brief Return the default cursor.

</member>
<member name="M:SDL_FreeCursor(SDL_Cursor*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="256">
  \brief Frees a cursor created with SDL_CreateCursor() or similar functions.

  \sa SDL_CreateCursor()
  \sa SDL_CreateColorCursor()
  \sa SDL_CreateSystemCursor()

</member>
<member name="M:SDL_ShowCursor(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_mouse.h" line="265">
  \brief Toggle whether or not the cursor is shown.

  \param toggle 1 to show the cursor, 0 to hide it, -1 to query the current
                state.

  \return 1 if the cursor is shown, or 0 if the cursor is hidden.

</member>
<member name="T:_SDL_Joystick" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_joystick.h

  Include file for SDL joystick event handling

 The term "device_index" identifies currently plugged in joystick devices between 0 and SDL_NumJoysticks(), with the exact joystick
   behind a device_index changing as joysticks are plugged and unplugged.

 The term "instance_id" is the current instantiation of a joystick device in the system, if the joystick is removed and then re-inserted
   then it will get a new instance_id, instance_id's are monotonically increasing identifiers of a joystick plugged in.

 The term JoystickGUID is a stable 128-bit identifier for a joystick device that does not change over time, it identifies class of
   the device (a X360 wired controller for example). This identifier is platform dependent.



  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

  \file SDL_joystick.h

  In order to use these functions, SDL_Init() must have been called
  with the ::SDL_INIT_JOYSTICK flag.  This causes SDL to scan the system
  for joysticks, and load appropriate drivers.

  If you would like to receive joystick updates while the application
  is in the background, you should set the following hint before calling
  SDL_Init(): SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS

The joystick structure used to identify an SDL joystick

</member>
<member name="D:SDL_JoystickID" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="74">
 This is a unique ID for a joystick for the time it is connected to the system,
 and is never reused for the lifetime of the application. If the joystick is
 disconnected and reconnected, it will get a new ID.

 The ID value starts at 0 and increments from there. The value -1 is an invalid ID.

</member>
<member name="M:SDL_LockJoysticks" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="110">
 Locking for multi-threaded access to the joystick API

 If you are using the joystick API or handling events from multiple threads
 you should use these locking functions to protect access to the joysticks.

 In particular, you are guaranteed that the joystick list won't change, so
 the API functions that take a joystick index will be valid, and joystick
 and game controller events will not be delivered.

</member>
<member name="M:SDL_NumJoysticks" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="123">
Count the number of joysticks attached to the system right now

</member>
<member name="M:SDL_JoystickNameForIndex(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="128">
Get the implementation dependent name of a joystick.
This can be called before any joysticks are opened.
If no name can be found, this function returns NULL.

</member>
<member name="M:SDL_JoystickGetDevicePlayerIndex(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="135">
Get the player index of a joystick, or -1 if it's not available
This can be called before any joysticks are opened.

</member>
<member name="M:SDL_JoystickGetDeviceGUID(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="141">
Return the GUID for the joystick at this index
This can be called before any joysticks are opened.

</member>
<member name="M:SDL_JoystickGetDeviceVendor(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="147">
Get the USB vendor ID of a joystick, if available.
This can be called before any joysticks are opened.
If the vendor ID isn't available this function returns 0.

</member>
<member name="M:SDL_JoystickGetDeviceProduct(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="154">
Get the USB product ID of a joystick, if available.
This can be called before any joysticks are opened.
If the product ID isn't available this function returns 0.

</member>
<member name="M:SDL_JoystickGetDeviceProductVersion(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="161">
Get the product version of a joystick, if available.
This can be called before any joysticks are opened.
If the product version isn't available this function returns 0.

</member>
<member name="M:SDL_JoystickGetDeviceType(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="168">
Get the type of a joystick, if available.
This can be called before any joysticks are opened.

</member>
<member name="M:SDL_JoystickGetDeviceInstanceID(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="174">
Get the instance ID of a joystick.
This can be called before any joysticks are opened.
If the index is out of range, this function will return -1.

</member>
<member name="M:SDL_JoystickOpen(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="181">
  Open a joystick for use.
  The index passed as an argument refers to the N'th joystick on the system.
  This index is not the value which will identify this joystick in future
  joystick events.  The joystick's instance id (::SDL_JoystickID) will be used
  there instead.

  \return A joystick identifier, or NULL if an error occurred.

</member>
<member name="M:SDL_JoystickFromInstanceID(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="192">
Return the SDL_Joystick associated with an instance id.

</member>
<member name="M:SDL_JoystickName(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="197">
Return the name for this currently opened joystick.
If no name can be found, this function returns NULL.

</member>
<member name="M:SDL_JoystickGetPlayerIndex(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="203">
  Get the player index of an opened joystick, or -1 if it's not available

  For XInput controllers this returns the XInput user index.

</member>
<member name="M:SDL_JoystickGetGUID(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="210">
Return the GUID for this opened joystick

</member>
<member name="M:SDL_JoystickGetVendor(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="215">
Get the USB vendor ID of an opened joystick, if available.
If the vendor ID isn't available this function returns 0.

</member>
<member name="M:SDL_JoystickGetProduct(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="221">
Get the USB product ID of an opened joystick, if available.
If the product ID isn't available this function returns 0.

</member>
<member name="M:SDL_JoystickGetProductVersion(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="227">
Get the product version of an opened joystick, if available.
If the product version isn't available this function returns 0.

</member>
<member name="M:SDL_JoystickGetType(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="233">
Get the type of an opened joystick.

</member>
<member name="M:SDL_JoystickGetGUIDString(SDL_JoystickGUID,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="238">
Return a string representation for this guid. pszGUID must point to at least 33 bytes
(32 for the string plus a NULL terminator).

</member>
<member name="M:SDL_JoystickGetGUIDFromString(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="244">
Convert a string into a joystick guid

</member>
<member name="M:SDL_JoystickGetAttached(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="249">
Returns SDL_TRUE if the joystick has been opened and currently connected, or SDL_FALSE if it has not.

</member>
<member name="M:SDL_JoystickInstanceID(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="254">
Get the instance ID of an opened joystick or -1 if the joystick is invalid.

</member>
<member name="M:SDL_JoystickNumAxes(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="259">
Get the number of general axis controls on a joystick.

</member>
<member name="M:SDL_JoystickNumBalls(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="264">
  Get the number of trackballs on a joystick.

  Joystick trackballs have only relative motion events associated
  with them and their state cannot be polled.

</member>
<member name="M:SDL_JoystickNumHats(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="272">
Get the number of POV hats on a joystick.

</member>
<member name="M:SDL_JoystickNumButtons(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="277">
Get the number of buttons on a joystick.

</member>
<member name="M:SDL_JoystickUpdate" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="282">
  Update the current state of the open joysticks.

  This is called automatically by the event loop if any joystick
  events are enabled.

</member>
<member name="M:SDL_JoystickEventState(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="290">
  Enable/disable joystick event polling.

  If joystick events are disabled, you must call SDL_JoystickUpdate()
  yourself and check the state of the joystick when you want joystick
  information.

  The state can be one of ::SDL_QUERY, ::SDL_ENABLE or ::SDL_IGNORE.

</member>
<member name="M:SDL_JoystickGetAxis(_SDL_Joystick*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="303">
  Get the current state of an axis control on a joystick.

  The state is a value ranging from -32768 to 32767.

  The axis indices start at index 0.

</member>
<member name="M:SDL_JoystickGetAxisInitialState(_SDL_Joystick*,System.Int32,System.Int16*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="313">
  Get the initial state of an axis control on a joystick.

  The state is a value ranging from -32768 to 32767.

  The axis indices start at index 0.

  \return SDL_TRUE if this axis has any initial value, or SDL_FALSE if not.

</member>
<member name="M:SDL_JoystickGetHat(_SDL_Joystick*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="325">
\name Hat positions

  Get the current state of a POV hat on a joystick.

  The hat indices start at index 0.

  \return The return value is one of the following positions:
           - ::SDL_HAT_CENTERED
           - ::SDL_HAT_UP
           - ::SDL_HAT_RIGHT
           - ::SDL_HAT_DOWN
           - ::SDL_HAT_LEFT
           - ::SDL_HAT_RIGHTUP
           - ::SDL_HAT_RIGHTDOWN
           - ::SDL_HAT_LEFTUP
           - ::SDL_HAT_LEFTDOWN

</member>
<member name="M:SDL_JoystickGetBall(_SDL_Joystick*,System.Int32,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="359">
  Get the ball axis change since the last poll.

  \return 0, or -1 if you passed it invalid parameters.

  The ball indices start at index 0.

</member>
<member name="M:SDL_JoystickGetButton(_SDL_Joystick*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="369">
  Get the current state of a button on a joystick.

  The button indices start at index 0.

</member>
<member name="M:SDL_JoystickRumble(_SDL_Joystick*,System.UInt16,System.UInt16,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="377">
  Trigger a rumble effect
  Each call to this function cancels any previous rumble effect, and calling it with 0 intensity stops any rumbling.

  \param joystick The joystick to vibrate
  \param low_frequency_rumble The intensity of the low frequency (left) rumble motor, from 0 to 0xFFFF
  \param high_frequency_rumble The intensity of the high frequency (right) rumble motor, from 0 to 0xFFFF
  \param duration_ms The duration of the rumble effect, in milliseconds

  \return 0, or -1 if rumble isn't supported on this joystick

</member>
<member name="M:SDL_JoystickClose(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="390">
Close a joystick previously opened with SDL_JoystickOpen().

</member>
<member name="M:SDL_JoystickCurrentPowerLevel(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_joystick.h" line="395">
Return the battery level of this joystick

</member>
<member name="T:_SDL_GameController" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_gamecontroller.h

  Include file for SDL game controller event handling

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

  \file SDL_gamecontroller.h

  In order to use these functions, SDL_Init() must have been called
  with the ::SDL_INIT_GAMECONTROLLER flag.  This causes SDL to scan the system
  for game controllers, and load appropriate drivers.

  If you would like to receive controller updates while the application
  is in the background, you should set the following hint before calling
  SDL_Init(): SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS

The gamecontroller structure used to identify an SDL game controller

</member>
<member name="T:SDL_GameControllerButtonBind" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="69">
Get the SDL joystick layer binding for this controller button/axis mapping

</member>
<!-- 'M:SDL_GameControllerAddMappingsFromRW(SDL_RWops*,System.Int32)' 멤버에 대한 잘못된 형식의 XML 문서 주석을 삭제합니다.-->
<member name="M:SDL_GameControllerAddMapping(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="124">
  Load a set of mappings from a file, filtered by the current SDL_GetPlatform()

  Convenience macro.

  Add or update an existing mapping configuration

 \return 1 if mapping is added, 0 if updated, -1 on error

</member>
<member name="M:SDL_GameControllerNumMappings" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="138">
  Get the number of mappings installed

  \return the number of mappings

</member>
<member name="M:SDL_GameControllerMappingForIndex(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="145">
  Get the mapping at a particular index.

  \return the mapping string.  Must be freed with SDL_free().  Returns NULL if the index is out of range.

</member>
<member name="M:SDL_GameControllerMappingForGUID(SDL_JoystickGUID)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="152">
  Get a mapping string for a GUID

  \return the mapping string.  Must be freed with SDL_free().  Returns NULL if no mapping is available

</member>
<member name="M:SDL_GameControllerMapping(_SDL_GameController*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="159">
  Get a mapping string for an open GameController

  \return the mapping string.  Must be freed with SDL_free().  Returns NULL if no mapping is available

</member>
<member name="M:SDL_IsGameController(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="166">
Is the joystick on this index supported by the game controller interface?

</member>
<member name="M:SDL_GameControllerNameForIndex(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="171">
Get the implementation dependent name of a game controller.
This can be called before any controllers are opened.
If no name can be found, this function returns NULL.

</member>
<member name="M:SDL_GameControllerMappingForDeviceIndex(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="178">
  Get the mapping of a game controller.
  This can be called before any controllers are opened.

  \return the mapping string.  Must be freed with SDL_free().  Returns NULL if no mapping is available

</member>
<member name="M:SDL_GameControllerOpen(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="186">
  Open a game controller for use.
  The index passed as an argument refers to the N'th game controller on the system.
  This index is not the value which will identify this controller in future
  controller events.  The joystick's instance id (::SDL_JoystickID) will be
  used there instead.

  \return A controller identifier, or NULL if an error occurred.

</member>
<member name="M:SDL_GameControllerFromInstanceID(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="197">
Return the SDL_GameController associated with an instance id.

</member>
<member name="M:SDL_GameControllerName(_SDL_GameController*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="202">
Return the name for this currently opened controller

</member>
<member name="M:SDL_GameControllerGetPlayerIndex(_SDL_GameController*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="207">
  Get the player index of an opened game controller, or -1 if it's not available

  For XInput controllers this returns the XInput user index.

</member>
<member name="M:SDL_GameControllerGetVendor(_SDL_GameController*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="214">
Get the USB vendor ID of an opened controller, if available.
If the vendor ID isn't available this function returns 0.

</member>
<member name="M:SDL_GameControllerGetProduct(_SDL_GameController*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="220">
Get the USB product ID of an opened controller, if available.
If the product ID isn't available this function returns 0.

</member>
<member name="M:SDL_GameControllerGetProductVersion(_SDL_GameController*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="226">
Get the product version of an opened controller, if available.
If the product version isn't available this function returns 0.

</member>
<member name="M:SDL_GameControllerGetAttached(_SDL_GameController*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="232">
Returns SDL_TRUE if the controller has been opened and currently connected,
or SDL_FALSE if it has not.

</member>
<member name="M:SDL_GameControllerGetJoystick(_SDL_GameController*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="238">
Get the underlying joystick object used by a controller

</member>
<member name="M:SDL_GameControllerEventState(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="243">
  Enable/disable controller event polling.

  If controller events are disabled, you must call SDL_GameControllerUpdate()
  yourself and check the state of the controller when you want controller
  information.

  The state can be one of ::SDL_QUERY, ::SDL_ENABLE or ::SDL_IGNORE.

</member>
<member name="M:SDL_GameControllerUpdate" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="254">
  Update the current state of the open game controllers.

  This is called automatically by the event loop if any game controller
  events are enabled.

</member>
<member name="M:SDL_GameControllerGetAxisFromString(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="284">
turn this string into a axis mapping

</member>
<member name="M:SDL_GameControllerGetStringForAxis(SDL_GameControllerAxis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="289">
turn this axis enum into a string mapping

</member>
<member name="M:SDL_GameControllerGetBindForAxis(_SDL_GameController*,SDL_GameControllerAxis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="294">
Get the SDL joystick layer binding for this controller button mapping

</member>
<member name="M:SDL_GameControllerGetAxis(_SDL_GameController*,SDL_GameControllerAxis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="301">
  Get the current state of an axis control on a game controller.

  The state is a value ranging from -32768 to 32767 (except for the triggers,
  which range from 0 to 32767).

  The axis indices start at index 0.

</member>
<member name="M:SDL_GameControllerGetButtonFromString(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="337">
turn this string into a button mapping

</member>
<member name="M:SDL_GameControllerGetStringForButton(SDL_GameControllerButton)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="342">
turn this button enum into a string mapping

</member>
<member name="M:SDL_GameControllerGetBindForButton(_SDL_GameController*,SDL_GameControllerButton)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="347">
Get the SDL joystick layer binding for this controller button mapping

</member>
<member name="M:SDL_GameControllerGetButton(_SDL_GameController*,SDL_GameControllerButton)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="355">
  Get the current state of a button on a game controller.

  The button indices start at index 0.

</member>
<member name="M:SDL_GameControllerRumble(_SDL_GameController*,System.UInt16,System.UInt16,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="363">
  Trigger a rumble effect
  Each call to this function cancels any previous rumble effect, and calling it with 0 intensity stops any rumbling.

  \param gamecontroller The controller to vibrate
  \param low_frequency_rumble The intensity of the low frequency (left) rumble motor, from 0 to 0xFFFF
  \param high_frequency_rumble The intensity of the high frequency (right) rumble motor, from 0 to 0xFFFF
  \param duration_ms The duration of the rumble effect, in milliseconds

  \return 0, or -1 if rumble isn't supported on this joystick

</member>
<member name="M:SDL_GameControllerClose(_SDL_GameController*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gamecontroller.h" line="376">
Close a controller previously opened with SDL_GameControllerOpen().

</member>
<member name="D:SDL_TouchID" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_quit.h

  Include file for SDL quit event handling.

  \file SDL_quit.h

  An ::SDL_QUIT event is generated when the user tries to close the application
  window.  If it is ignored or filtered out, the window will remain open.
  If it is not ignored or filtered, it is queued normally and the window
  is allowed to close.  When the window is closed, screen updates will
  complete, but have no effect.

  SDL_Init() installs signal handlers for SIGINT (keyboard interrupt)
  and SIGTERM (system termination request), if handlers do not already
  exist, that generate ::SDL_QUIT events as well.  There is no way
  to determine the cause of an ::SDL_QUIT event, but setting a signal
  handler in your application will override the default generation of
  quit events for that signal.

  \sa SDL_Quit()

  \file SDL_gesture.h

  Include file for SDL gesture event handling.

  \file SDL_touch.h

  Include file for SDL touch event handling.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="M:SDL_GetNumTouchDevices" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_touch.h" line="69">
\brief Get the number of registered touch devices.

</member>
<member name="M:SDL_GetTouchDevice(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_touch.h" line="74">
\brief Get the touch ID with the given index, or 0 if the index is invalid.

</member>
<member name="M:SDL_GetTouchDeviceType(System.Int64)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_touch.h" line="79">
\brief Get the type of the given touch device.

</member>
<member name="M:SDL_GetNumTouchFingers(System.Int64)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_touch.h" line="84">
\brief Get the number of active fingers for a given touch device.

</member>
<member name="M:SDL_GetTouchFinger(System.Int64,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_touch.h" line="89">
\brief Get the finger object of the given touch, with the given index.

</member>
<member name="D:SDL_GestureID" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="M:SDL_RecordGesture(System.Int64)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gesture.h" line="48">
  \brief Begin Recording a gesture on the specified touch, or all touches (-1)



</member>
<member name="M:SDL_SaveAllDollarTemplates(SDL_RWops*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gesture.h" line="56">
  \brief Save all currently loaded Dollar Gesture templates



</member>
<member name="M:SDL_SaveDollarTemplate(System.Int64,SDL_RWops*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gesture.h" line="63">
  \brief Save a currently loaded Dollar Gesture template



</member>
<member name="M:SDL_LoadDollarTemplates(System.Int64,SDL_RWops*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_gesture.h" line="71">
  \brief Load Dollar Gesture templates from a file



</member>
<member name="F:SDL_USEREVENT" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="157">
Events ::SDL_USEREVENT through ::SDL_LASTEVENT are for your use,
     *  and should be allocated with SDL_RegisterEvents()

</member>
<member name="F:SDL_LASTEVENT" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="162">
This last event is only for bounding internal arrays

</member>
<member name="T:SDL_CommonEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="168">
\brief Fields shared by every event

</member>
<member name="T:SDL_DisplayEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="177">
\brief Display state change event data (event.display.*)

</member>
<member name="T:SDL_WindowEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="192">
\brief Window state change event data (event.window.*)

</member>
<member name="T:SDL_KeyboardEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="208">
\brief Keyboard button event structure (event.key.*)

</member>
<member name="T:SDL_TextEditingEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="224">
\brief Keyboard text editing event structure (event.edit.*)

</member>
<member name="T:SDL_TextInputEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="239">
\brief Keyboard text input event structure (event.text.*)

</member>
<member name="T:SDL_MouseMotionEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="250">
\brief Mouse motion event structure (event.motion.*)

</member>
<member name="T:SDL_MouseButtonEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="266">
\brief Mouse button event structure (event.button.*)

</member>
<member name="T:SDL_MouseWheelEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="283">
\brief Mouse wheel event structure (event.wheel.*)

</member>
<member name="T:SDL_JoyAxisEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="297">
\brief Joystick axis motion event structure (event.jaxis.*)

</member>
<member name="T:SDL_JoyBallEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="313">
\brief Joystick trackball motion event structure (event.jball.*)

</member>
<member name="T:SDL_JoyHatEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="329">
\brief Joystick hat position change event structure (event.jhat.*)

</member>
<member name="T:SDL_JoyButtonEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="349">
\brief Joystick button event structure (event.jbutton.*)

</member>
<member name="T:SDL_JoyDeviceEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="363">
\brief Joystick device event structure (event.jdevice.*)

</member>
<member name="T:SDL_ControllerAxisEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="374">
\brief Game controller axis motion event structure (event.caxis.*)

</member>
<member name="T:SDL_ControllerButtonEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="391">
\brief Game controller button event structure (event.cbutton.*)

</member>
<member name="T:SDL_ControllerDeviceEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="406">
\brief Controller device event structure (event.cdevice.*)

</member>
<member name="T:SDL_AudioDeviceEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="416">
\brief Audio device event structure (event.adevice.*)

</member>
<member name="T:SDL_TouchFingerEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="431">
\brief Touch finger event structure (event.tfinger.*)

</member>
<member name="T:SDL_MultiGestureEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="448">
\brief Multiple Finger Gesture Event (event.mgesture.*)

</member>
<member name="T:SDL_DollarGestureEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="465">
\brief Dollar Gesture Event (event.dgesture.*)

</member>
<member name="T:SDL_DropEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="481">
\brief An event used to request a file open by the system (event.drop.*)
       This event is enabled by default, you can disable it with SDL_EventState().
\note If this event is enabled, you must free the filename in the event.

</member>
<member name="T:SDL_SensorEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="495">
\brief Sensor event structure (event.sensor.*)

</member>
<member name="T:SDL_QuitEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="506">
\brief The "quit requested" event

</member>
<member name="T:SDL_OSEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="515">
\brief OS Specific event

</member>
<member name="T:SDL_UserEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="524">
\brief A user-defined event type (event.user.*)

</member>
<member name="T:SDL_SysWMEvent" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="541">
  \brief A video driver dependent system event (event.syswm.*)
         This event is disabled by default, you can enable it with SDL_EventState()

  \note If you want to use this event, you should include SDL_syswm.h.

</member>
<member name="T:SDL_Event" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="554">
\brief General event structure

</member>
<member name="M:SDL_PumpEvents" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="603">
  Pumps the event loop, gathering events from the input devices.

  This function updates the event queue and internal input device state.

  This should only be run in the thread that sets the video mode.

</member>
<member name="M:SDL_PeepEvents(SDL_Event*,System.Int32,SDL_eventaction,System.UInt32,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="620">
  Checks the event queue for messages and optionally returns them.

  If \c action is ::SDL_ADDEVENT, up to \c numevents events will be added to
  the back of the event queue.

  If \c action is ::SDL_PEEKEVENT, up to \c numevents events at the front
  of the event queue, within the specified minimum and maximum type,
  will be returned and will not be removed from the queue.

  If \c action is ::SDL_GETEVENT, up to \c numevents events at the front
  of the event queue, within the specified minimum and maximum type,
  will be returned and will be removed from the queue.

  \return The number of events actually stored, or -1 if there was an error.

  This function is thread-safe.

</member>
<member name="M:SDL_HasEvent(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="643">
Checks to see if certain event types are in the event queue.

</member>
<member name="M:SDL_FlushEvent(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="649">
This function clears events from the event queue
This function only affects currently queued events. If you want to make
sure that all pending OS events are flushed, you can call SDL_PumpEvents()
on the main thread immediately before the flush call.

</member>
<member name="M:SDL_PollEvent(SDL_Event*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="658">
  \brief Polls for currently pending events.

  \return 1 if there are any pending events, or 0 if there are none available.

  \param event If not NULL, the next event is removed from the queue and
               stored in that area.

</member>
<member name="M:SDL_WaitEvent(SDL_Event*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="668">
  \brief Waits indefinitely for the next available event.

  \return 1, or 0 if there was an error while waiting for events.

  \param event If not NULL, the next event is removed from the queue and
               stored in that area.

</member>
<member name="M:SDL_WaitEventTimeout(SDL_Event*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="678">
  \brief Waits until the specified timeout (in milliseconds) for the next
         available event.

  \return 1, or 0 if there was an error while waiting for events.

  \param event If not NULL, the next event is removed from the queue and
               stored in that area.
  \param timeout The timeout (in milliseconds) to wait for next event.

</member>
<member name="M:SDL_PushEvent(SDL_Event*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="691">
  \brief Add an event to the event queue.

  \return 1 on success, 0 if the event was filtered, or -1 if the event queue
          was full or there was some other error.

</member>
<member name="M:SDL_SetEventFilter(=FUNC:System.Int32(System.Void*,SDL_Event*),System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="701">
  Sets up a filter to process all events before they change internal state and
  are posted to the internal event queue.

  The filter is prototyped as:
  \code
      int SDL_EventFilter(void *userdata, SDL_Event * event);
  \endcode

  If the filter returns 1, then the event will be added to the internal queue.
  If it returns 0, then the event will be dropped from the queue, but the
  internal state will still be updated.  This allows selective filtering of
  dynamically arriving events.

  \warning  Be very careful of what you do in the event filter function, as
            it may run in a different thread!

  There is one caveat when dealing with the ::SDL_QuitEvent event type.  The
  event filter is only called when the window manager desires to close the
  application window.  If the event filter returns 1, then the window will
  be closed, otherwise the window will remain open if possible.

  If the quit event is generated by an interrupt signal, it will bypass the
  internal queue and be delivered to the application at the next event poll.

</member>
<member name="M:SDL_GetEventFilter(=FUNC:System.Int32(System.Void*,SDL_Event*)*,System.Void**)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="729">
Return the current event filter - can be used to "chain" filters.
If there is no event filter set, this function returns SDL_FALSE.

</member>
<member name="M:SDL_AddEventWatch(=FUNC:System.Int32(System.Void*,SDL_Event*),System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="736">
Add a function which is called when an event is added to the queue.

</member>
<member name="M:SDL_DelEventWatch(=FUNC:System.Int32(System.Void*,SDL_Event*),System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="742">
Remove an event watch function added with SDL_AddEventWatch()

</member>
<member name="M:SDL_FilterEvents(=FUNC:System.Int32(System.Void*,SDL_Event*),System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="748">
Run the filter function on the current event queue, removing any
events for which the filter returns 0.

</member>
<member name="M:SDL_EventState(System.UInt32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="761">
This function allows you to set the state of processing certain events.
 - If \c state is set to ::SDL_IGNORE, that event will be automatically
   dropped from the event queue and will not be filtered.
 - If \c state is set to ::SDL_ENABLE, that event will be processed
   normally.
 - If \c state is set to ::SDL_QUERY, SDL_EventState() will return the
   current processing state of the specified event.

</member>
<member name="M:SDL_RegisterEvents(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_events.h" line="774">
  This function allocates a set of user-defined events, and returns
  the beginning event number for that set of events.

  If there aren't enough user-defined events left, this function
  returns (Uint32)-1

</member>
<member name="M:SDL_GetBasePath" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_filesystem.h

  \brief Include file for filesystem SDL API functions

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

 \brief Get the path where the application resides.

 Get the "base path". This is the directory where the application was run
  from, which is probably the installation directory, and may or may not
  be the process's current working directory.

 This returns an absolute path in UTF-8 encoding, and is guaranteed to
  end with a path separator ('\\' on Windows, '/' most other places).

 The pointer returned by this function is owned by you. Please call
  SDL_free() on the pointer when you are done with it, or it will be a
  memory leak. This is not necessarily a fast call, though, so you should
  call this once near startup and save the string if you need it.

 Some platforms can't determine the application's path, and on other
  platforms, this might be meaningless. In such cases, this function will
  return NULL.

  \return String of base dir in UTF-8 encoding, or NULL on error.

 \sa SDL_GetPrefPath

</member>
<member name="M:SDL_GetPrefPath(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_filesystem.h" line="65">
 \brief Get the user-and-app-specific path where files can be written.

 Get the "pref dir". This is meant to be where users can write personal
  files (preferences and save games, etc) that are specific to your
  application. This directory is unique per user, per application.

 This function will decide the appropriate location in the native filesystem,
  create the directory if necessary, and return a string of the absolute
  path to the directory in UTF-8 encoding.

 On Windows, the string might look like:
  "C:\\Users\\bob\\AppData\\Roaming\\My Company\\My Program Name\\"

 On Linux, the string might look like:
  "/home/bob/.local/share/My Program Name/"

 On Mac OS X, the string might look like:
  "/Users/bob/Library/Application Support/My Program Name/"

 (etc.)

 You specify the name of your organization (if it's not a real organization,
  your name or an Internet domain you own might do) and the name of your
  application. These should be untranslated proper names.

 Both the org and app strings may become part of a directory name, so
  please follow these rules:

    - Try to use the same org string (including case-sensitivity) for
      all your applications that use this function.
    - Always use a unique app string for each one, and make sure it never
      changes for an app once you've decided on it.
    - Unicode characters are legal, as long as it's UTF-8 encoded, but...
    - ...only use letters, numbers, and spaces. Avoid punctuation like
      "Game Name 2: Bad Guy's Revenge!" ... "Game Name 2" is sufficient.

 This returns an absolute path in UTF-8 encoding, and is guaranteed to
  end with a path separator ('\\' on Windows, '/' most other places).

 The pointer returned by this function is owned by you. Please call
  SDL_free() on the pointer when you are done with it, or it will be a
  memory leak. This is not necessarily a fast call, though, so you should
  call this once near startup and save the string if you need it.

 You should assume the path returned by this function is the only safe
  place to write files (and that SDL_GetBasePath(), while it might be
  writable, or even the parent of the returned path, aren't where you
  should be writing things).

 Some platforms can't determine the pref path, and on other
  platforms, this might be meaningless. In such cases, this function will
  return NULL.

   \param org The name of your organization.
   \param app The name of your application.
  \return UTF-8 string of user dir in platform-dependent notation. NULL
          if there's a problem (creating directory failed, etc).

 \sa SDL_GetBasePath

</member>
<!-- 'T:_SDL_Haptic' 멤버에 대한 잘못된 형식의 XML 문서 주석을 삭제합니다.-->
<!-- 'T:SDL_HapticDirection' 멤버에 대한 잘못된 형식의 XML 문서 주석을 삭제합니다.-->
<member name="T:SDL_HapticConstant" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="457">
  \brief A structure containing a template for a Constant effect.

  This struct is exclusively for the ::SDL_HAPTIC_CONSTANT effect.

  A constant effect applies a constant force in the specified direction
  to the joystick.

  \sa SDL_HAPTIC_CONSTANT
  \sa SDL_HapticEffect

</member>
<member name="T:SDL_HapticPeriodic" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="492">
 *  \brief A structure containing a template for a Periodic effect.
 *
 *  The struct handles the following effects:
 *   - ::SDL_HAPTIC_SINE
 *   - ::SDL_HAPTIC_LEFTRIGHT
 *   - ::SDL_HAPTIC_TRIANGLE
 *   - ::SDL_HAPTIC_SAWTOOTHUP
 *   - ::SDL_HAPTIC_SAWTOOTHDOWN
 *
 *  A periodic effect consists in a wave-shaped effect that repeats itself
 *  over time.  The type determines the shape of the wave and the parameters
 *  determine the dimensions of the wave.
 *
 *  Phase is given by hundredth of a degree meaning that giving the phase a value
 *  of 9000 will displace it 25% of its period.  Here are sample values:
 *   -     0: No phase displacement.
 *   -  9000: Displaced 25% of its period.
 *   - 18000: Displaced 50% of its period.
 *   - 27000: Displaced 75% of its period.
 *   - 36000: Displaced 100% of its period, same as 0, but 0 is preferred.
 *
 *  Examples:
 *  \verbatim
    SDL_HAPTIC_SINE
      __      __      __      __
     /  \    /  \    /  \    /
    /    \__/    \__/    \__/

    SDL_HAPTIC_SQUARE
     __    __    __    __    __
    |  |  |  |  |  |  |  |  |  |
    |  |__|  |__|  |__|  |__|  |

    SDL_HAPTIC_TRIANGLE
      /\    /\    /\    /\    /\
     /  \  /  \  /  \  /  \  /
    /    \/    \/    \/    \/

    SDL_HAPTIC_SAWTOOTHUP
      /|  /|  /|  /|  /|  /|  /|
     / | / | / | / | / | / | / |
    /  |/  |/  |/  |/  |/  |/  |

    SDL_HAPTIC_SAWTOOTHDOWN
    \  |\  |\  |\  |\  |\  |\  |
     \ | \ | \ | \ | \ | \ | \ |
      \|  \|  \|  \|  \|  \|  \|
    \endverbatim
 *
 *  \sa SDL_HAPTIC_SINE
 *  \sa SDL_HAPTIC_LEFTRIGHT
 *  \sa SDL_HAPTIC_TRIANGLE
 *  \sa SDL_HAPTIC_SAWTOOTHUP
 *  \sa SDL_HAPTIC_SAWTOOTHDOWN
 *  \sa SDL_HapticEffect

</member>
<member name="T:SDL_HapticCondition" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="578">
  \brief A structure containing a template for a Condition effect.

  The struct handles the following effects:
   - ::SDL_HAPTIC_SPRING: Effect based on axes position.
   - ::SDL_HAPTIC_DAMPER: Effect based on axes velocity.
   - ::SDL_HAPTIC_INERTIA: Effect based on axes acceleration.
   - ::SDL_HAPTIC_FRICTION: Effect based on axes movement.

  Direction is handled by condition internals instead of a direction member.
  The condition effect specific members have three parameters.  The first
  refers to the X axis, the second refers to the Y axis and the third
  refers to the Z axis.  The right terms refer to the positive side of the
  axis and the left terms refer to the negative side of the axis.  Please
  refer to the ::SDL_HapticDirection diagram for which side is positive and
  which is negative.

  \sa SDL_HapticDirection
  \sa SDL_HAPTIC_SPRING
  \sa SDL_HAPTIC_DAMPER
  \sa SDL_HAPTIC_INERTIA
  \sa SDL_HAPTIC_FRICTION
  \sa SDL_HapticEffect

</member>
<member name="T:SDL_HapticRamp" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="626">
  \brief A structure containing a template for a Ramp effect.

  This struct is exclusively for the ::SDL_HAPTIC_RAMP effect.

  The ramp effect starts at start strength and ends at end strength.
  It augments in linear fashion.  If you use attack and fade with a ramp
  the effects get added to the ramp effect making the effect become
  quadratic instead of linear.

  \sa SDL_HAPTIC_RAMP
  \sa SDL_HapticEffect

</member>
<member name="T:SDL_HapticLeftRight" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="664">
 \brief A structure containing a template for a Left/Right effect.

 This struct is exclusively for the ::SDL_HAPTIC_LEFTRIGHT effect.

 The Left/Right effect is used to explicitly control the large and small
 motors, commonly found in modern game controllers. The small (right) motor
 is high frequency, and the large (left) motor is low frequency.

 \sa SDL_HAPTIC_LEFTRIGHT
 \sa SDL_HapticEffect

</member>
<member name="T:SDL_HapticCustom" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="689">
  \brief A structure containing a template for the ::SDL_HAPTIC_CUSTOM effect.

  This struct is exclusively for the ::SDL_HAPTIC_CUSTOM effect.

  A custom force feedback effect is much like a periodic effect, where the
  application can define its exact shape.  You will have to allocate the
  data yourself.  Data should consist of channels * samples Uint16 samples.

  If channels is one, the effect is rotated using the defined direction.
  Otherwise it uses the samples in data for the different axes.

  \sa SDL_HAPTIC_CUSTOM
  \sa SDL_HapticEffect

</member>
<!-- 'T:SDL_HapticEffect' 멤버에 대한 잘못된 형식의 XML 문서 주석을 삭제합니다.-->
<member name="M:SDL_NumHaptics" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="814">
  \brief Count the number of haptic devices attached to the system.

  \return Number of haptic devices detected on the system.

</member>
<member name="M:SDL_HapticName(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="821">
  \brief Get the implementation dependent name of a haptic device.

  This can be called before any joysticks are opened.
  If no name can be found, this function returns NULL.

  \param device_index Index of the device to get its name.
  \return Name of the device or NULL on error.

  \sa SDL_NumHaptics

</member>
<member name="M:SDL_HapticOpen(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="834">
  \brief Opens a haptic device for use.

  The index passed as an argument refers to the N'th haptic device on this
  system.

  When opening a haptic device, its gain will be set to maximum and
  autocenter will be disabled.  To modify these values use
  SDL_HapticSetGain() and SDL_HapticSetAutocenter().

  \param device_index Index of the device to open.
  \return Device identifier or NULL on error.

  \sa SDL_HapticIndex
  \sa SDL_HapticOpenFromMouse
  \sa SDL_HapticOpenFromJoystick
  \sa SDL_HapticClose
  \sa SDL_HapticSetGain
  \sa SDL_HapticSetAutocenter
  \sa SDL_HapticPause
  \sa SDL_HapticStopAll

</member>
<member name="M:SDL_HapticOpened(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="858">
  \brief Checks if the haptic device at index has been opened.

  \param device_index Index to check to see if it has been opened.
  \return 1 if it has been opened or 0 if it hasn't.

  \sa SDL_HapticOpen
  \sa SDL_HapticIndex

</member>
<member name="M:SDL_HapticIndex(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="869">
  \brief Gets the index of a haptic device.

  \param haptic Haptic device to get the index of.
  \return The index of the haptic device or -1 on error.

  \sa SDL_HapticOpen
  \sa SDL_HapticOpened

</member>
<member name="M:SDL_MouseIsHaptic" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="880">
  \brief Gets whether or not the current mouse has haptic capabilities.

  \return SDL_TRUE if the mouse is haptic, SDL_FALSE if it isn't.

  \sa SDL_HapticOpenFromMouse

</member>
<member name="M:SDL_HapticOpenFromMouse" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="889">
  \brief Tries to open a haptic device from the current mouse.

  \return The haptic device identifier or NULL on error.

  \sa SDL_MouseIsHaptic
  \sa SDL_HapticOpen

</member>
<member name="M:SDL_JoystickIsHaptic(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="899">
  \brief Checks to see if a joystick has haptic features.

  \param joystick Joystick to test for haptic capabilities.
  \return SDL_TRUE if the joystick is haptic, SDL_FALSE if it isn't
          or -1 if an error occurred.

  \sa SDL_HapticOpenFromJoystick

</member>
<member name="M:SDL_HapticOpenFromJoystick(_SDL_Joystick*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="910">
  \brief Opens a haptic device for use from a joystick device.

  You must still close the haptic device separately.  It will not be closed
  with the joystick.

  When opening from a joystick you should first close the haptic device before
  closing the joystick device.  If not, on some implementations the haptic
  device will also get unallocated and you'll be unable to use force feedback
  on that device.

  \param joystick Joystick to create a haptic device from.
  \return A valid haptic device identifier on success or NULL on error.

  \sa SDL_HapticOpen
  \sa SDL_HapticClose

</member>
<member name="M:SDL_HapticClose(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="930">
  \brief Closes a haptic device previously opened with SDL_HapticOpen().

  \param haptic Haptic device to close.

</member>
<member name="M:SDL_HapticNumEffects(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="937">
  \brief Returns the number of effects a haptic device can store.

  On some platforms this isn't fully supported, and therefore is an
  approximation.  Always check to see if your created effect was actually
  created and do not rely solely on SDL_HapticNumEffects().

  \param haptic The haptic device to query effect max.
  \return The number of effects the haptic device can store or
          -1 on error.

  \sa SDL_HapticNumEffectsPlaying
  \sa SDL_HapticQuery

</member>
<member name="M:SDL_HapticNumEffectsPlaying(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="953">
  \brief Returns the number of effects a haptic device can play at the same
         time.

  This is not supported on all platforms, but will always return a value.
  Added here for the sake of completeness.

  \param haptic The haptic device to query maximum playing effects.
  \return The number of effects the haptic device can play at the same time
          or -1 on error.

  \sa SDL_HapticNumEffects
  \sa SDL_HapticQuery

</member>
<!-- 'M:SDL_HapticQuery(_SDL_Haptic*)' 멤버에 대한 잘못된 형식의 XML 문서 주석을 삭제합니다.-->
<member name="M:SDL_HapticNumAxes(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="988">
  \brief Gets the number of haptic axes the device has.

  \sa SDL_HapticDirection

</member>
<member name="M:SDL_HapticEffectSupported(_SDL_Haptic*,SDL_HapticEffect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="995">
  \brief Checks to see if effect is supported by haptic.

  \param haptic Haptic device to check on.
  \param effect Effect to check to see if it is supported.
  \return SDL_TRUE if effect is supported, SDL_FALSE if it isn't or -1 on error.

  \sa SDL_HapticQuery
  \sa SDL_HapticNewEffect

</member>
<member name="M:SDL_HapticNewEffect(_SDL_Haptic*,SDL_HapticEffect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1009">
  \brief Creates a new haptic effect on the device.

  \param haptic Haptic device to create the effect on.
  \param effect Properties of the effect to create.
  \return The identifier of the effect on success or -1 on error.

  \sa SDL_HapticUpdateEffect
  \sa SDL_HapticRunEffect
  \sa SDL_HapticDestroyEffect

</member>
<member name="M:SDL_HapticUpdateEffect(_SDL_Haptic*,System.Int32,SDL_HapticEffect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1023">
  \brief Updates the properties of an effect.

  Can be used dynamically, although behavior when dynamically changing
  direction may be strange.  Specifically the effect may reupload itself
  and start playing from the start.  You cannot change the type either when
  running SDL_HapticUpdateEffect().

  \param haptic Haptic device that has the effect.
  \param effect Identifier of the effect to update.
  \param data New effect properties to use.
  \return 0 on success or -1 on error.

  \sa SDL_HapticNewEffect
  \sa SDL_HapticRunEffect
  \sa SDL_HapticDestroyEffect

</member>
<member name="M:SDL_HapticRunEffect(_SDL_Haptic*,System.Int32,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1044">
  \brief Runs the haptic effect on its associated haptic device.

  If iterations are ::SDL_HAPTIC_INFINITY, it'll run the effect over and over
  repeating the envelope (attack and fade) every time.  If you only want the
  effect to last forever, set ::SDL_HAPTIC_INFINITY in the effect's length
  parameter.

  \param haptic Haptic device to run the effect on.
  \param effect Identifier of the haptic effect to run.
  \param iterations Number of iterations to run the effect. Use
         ::SDL_HAPTIC_INFINITY for infinity.
  \return 0 on success or -1 on error.

  \sa SDL_HapticStopEffect
  \sa SDL_HapticDestroyEffect
  \sa SDL_HapticGetEffectStatus

</member>
<member name="M:SDL_HapticStopEffect(_SDL_Haptic*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1066">
  \brief Stops the haptic effect on its associated haptic device.

  \param haptic Haptic device to stop the effect on.
  \param effect Identifier of the effect to stop.
  \return 0 on success or -1 on error.

  \sa SDL_HapticRunEffect
  \sa SDL_HapticDestroyEffect

</member>
<member name="M:SDL_HapticDestroyEffect(_SDL_Haptic*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1079">
  \brief Destroys a haptic effect on the device.

  This will stop the effect if it's running.  Effects are automatically
  destroyed when the device is closed.

  \param haptic Device to destroy the effect on.
  \param effect Identifier of the effect to destroy.

  \sa SDL_HapticNewEffect

</member>
<member name="M:SDL_HapticGetEffectStatus(_SDL_Haptic*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1093">
  \brief Gets the status of the current effect on the haptic device.

  Device must support the ::SDL_HAPTIC_STATUS feature.

  \param haptic Haptic device to query the effect status on.
  \param effect Identifier of the effect to query its status.
  \return 0 if it isn't playing, 1 if it is playing or -1 on error.

  \sa SDL_HapticRunEffect
  \sa SDL_HapticStopEffect

</member>
<member name="M:SDL_HapticSetGain(_SDL_Haptic*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1108">
  \brief Sets the global gain of the device.

  Device must support the ::SDL_HAPTIC_GAIN feature.

  The user may specify the maximum gain by setting the environment variable
  SDL_HAPTIC_GAIN_MAX which should be between 0 and 100.  All calls to
  SDL_HapticSetGain() will scale linearly using SDL_HAPTIC_GAIN_MAX as the
  maximum.

  \param haptic Haptic device to set the gain on.
  \param gain Value to set the gain to, should be between 0 and 100.
  \return 0 on success or -1 on error.

  \sa SDL_HapticQuery

</member>
<member name="M:SDL_HapticSetAutocenter(_SDL_Haptic*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1126">
  \brief Sets the global autocenter of the device.

  Autocenter should be between 0 and 100.  Setting it to 0 will disable
  autocentering.

  Device must support the ::SDL_HAPTIC_AUTOCENTER feature.

  \param haptic Haptic device to set autocentering on.
  \param autocenter Value to set autocenter to, 0 disables autocentering.
  \return 0 on success or -1 on error.

  \sa SDL_HapticQuery

</member>
<member name="M:SDL_HapticPause(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1143">
  \brief Pauses a haptic device.

  Device must support the ::SDL_HAPTIC_PAUSE feature.  Call
  SDL_HapticUnpause() to resume playback.

  Do not modify the effects nor add new ones while the device is paused.
  That can cause all sorts of weird errors.

  \param haptic Haptic device to pause.
  \return 0 on success or -1 on error.

  \sa SDL_HapticUnpause

</member>
<member name="M:SDL_HapticUnpause(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1159">
  \brief Unpauses a haptic device.

  Call to unpause after SDL_HapticPause().

  \param haptic Haptic device to unpause.
  \return 0 on success or -1 on error.

  \sa SDL_HapticPause

</member>
<member name="M:SDL_HapticStopAll(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1171">
  \brief Stops all the currently playing effects on a haptic device.

  \param haptic Haptic device to stop.
  \return 0 on success or -1 on error.

</member>
<member name="M:SDL_HapticRumbleSupported(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1179">
  \brief Checks to see if rumble is supported on a haptic device.

  \param haptic Haptic device to check to see if it supports rumble.
  \return SDL_TRUE if effect is supported, SDL_FALSE if it isn't or -1 on error.

  \sa SDL_HapticRumbleInit
  \sa SDL_HapticRumblePlay
  \sa SDL_HapticRumbleStop

</member>
<member name="M:SDL_HapticRumbleInit(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1191">
  \brief Initializes the haptic device for simple rumble playback.

  \param haptic Haptic device to initialize for simple rumble playback.
  \return 0 on success or -1 on error.

  \sa SDL_HapticOpen
  \sa SDL_HapticRumbleSupported
  \sa SDL_HapticRumblePlay
  \sa SDL_HapticRumbleStop

</member>
<member name="M:SDL_HapticRumblePlay(_SDL_Haptic*,System.Single,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1204">
  \brief Runs simple rumble on a haptic device

  \param haptic Haptic device to play rumble effect on.
  \param strength Strength of the rumble to play as a 0-1 float value.
  \param length Length of the rumble to play in milliseconds.
  \return 0 on success or -1 on error.

  \sa SDL_HapticRumbleSupported
  \sa SDL_HapticRumbleInit
  \sa SDL_HapticRumbleStop

</member>
<member name="M:SDL_HapticRumbleStop(_SDL_Haptic*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_haptic.h" line="1218">
  \brief Stops the simple rumble on a haptic device.

  \param haptic Haptic to stop the rumble on.
  \return 0 on success or -1 on error.

  \sa SDL_HapticRumbleSupported
  \sa SDL_HapticRumbleInit
  \sa SDL_HapticRumblePlay

</member>
<member name="M:SDL_SetHintWithPriority(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,SDL_HintPriority)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_hints.h" line="1188">
  \brief Set a hint with a specific priority

  The priority controls the behavior when setting a hint that already
  has a value.  Hints will replace existing hints of their priority and
  lower.  Environment variables are considered to have override priority.

  \return SDL_TRUE if the hint was set, SDL_FALSE otherwise

</member>
<member name="M:SDL_SetHint(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_hints.h" line="1201">
  \brief Set a hint with normal priority

  \return SDL_TRUE if the hint was set, SDL_FALSE otherwise

</member>
<member name="M:SDL_GetHint(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_hints.h" line="1209">
  \brief Get a hint

  \return The string value of a hint variable.

</member>
<member name="M:SDL_GetHintBoolean(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,SDL_bool)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_hints.h" line="1216">
  \brief Get a hint

  \return The boolean value of a hint variable.

</member>
<member name="D:SDL_HintCallback" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_hints.h" line="1223">
\brief type definition of the hint callback function.

</member>
<member name="M:SDL_AddHintCallback(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,=FUNC:System.Void(System.Void*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*),System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_hints.h" line="1228">
  \brief Add a function to watch a particular hint

  \param name The hint to watch
  \param callback The function to call when the hint value changes
  \param userdata A pointer to pass to the callback function

</member>
<member name="M:SDL_DelHintCallback(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,=FUNC:System.Void(System.Void*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*),System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_hints.h" line="1239">
  \brief Remove a function watching a particular hint

  \param name The hint being watched
  \param callback The function being called when the hint value changes
  \param userdata A pointer being passed to the callback function

</member>
<member name="M:SDL_ClearHints" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_hints.h" line="1250">
  \brief  Clear all hints

  This function is called during SDL_Quit() to free stored hints.

</member>
<member name="M:SDL_LoadObject(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_loadso.h

  System dependent library loading routines

  Some things to keep in mind:
  \li These functions only work on C function names.  Other languages may
      have name mangling and intrinsic language support that varies from
      compiler to compiler.
  \li Make sure you declare your function pointers with the same calling
      convention as the actual library function.  Your code will crash
      mysteriously if you do not do this.
  \li Avoid namespace collisions.  If you load a symbol from the library,
      it is not defined whether or not it goes into the global symbol
      namespace for the application.  If it does and it conflicts with
      symbols in your code or other shared libraries, you will not get
      the results you expect. :)

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

This function dynamically loads a shared object and returns a pointer
to the object handle (or NULL if there was an error).
The 'sofile' parameter is a system dependent name of the object file.

</member>
<member name="M:SDL_LoadFunction(System.Void*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_loadso.h" line="60">
Given an object handle, this function looks up the address of the
named function in the shared object and returns it.  This address
is no longer valid after calling SDL_UnloadObject().

</member>
<member name="M:SDL_UnloadObject(System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_loadso.h" line="68">
Unload a shared object from memory.

</member>
<member name="M:SDL_LogSetAllPriority(SDL_LogPriority)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="114">
\brief Set the priority of all log categories

</member>
<member name="M:SDL_LogSetPriority(System.Int32,SDL_LogPriority)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="119">
\brief Set the priority of a particular log category

</member>
<member name="M:SDL_LogGetPriority(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="125">
\brief Get the priority of a particular log category

</member>
<member name="M:SDL_LogResetPriorities" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="130">
  \brief Reset all priorities to default.

  \note This is called in SDL_Quit().

</member>
<member name="M:SDL_Log(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="137">
\brief Log a message with SDL_LOG_CATEGORY_APPLICATION and SDL_LOG_PRIORITY_INFO

</member>
<member name="M:SDL_LogVerbose(System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="142">
\brief Log a message with SDL_LOG_PRIORITY_VERBOSE

</member>
<member name="M:SDL_LogDebug(System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="147">
\brief Log a message with SDL_LOG_PRIORITY_DEBUG

</member>
<member name="M:SDL_LogInfo(System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="152">
\brief Log a message with SDL_LOG_PRIORITY_INFO

</member>
<member name="M:SDL_LogWarn(System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="157">
\brief Log a message with SDL_LOG_PRIORITY_WARN

</member>
<member name="M:SDL_LogError(System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="162">
\brief Log a message with SDL_LOG_PRIORITY_ERROR

</member>
<member name="M:SDL_LogCritical(System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="167">
\brief Log a message with SDL_LOG_PRIORITY_CRITICAL

</member>
<member name="M:SDL_LogMessage(System.Int32,SDL_LogPriority,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="172">
\brief Log a message with the specified category and priority.

</member>
<member name="M:SDL_LogMessageV(System.Int32,SDL_LogPriority,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="179">
\brief Log a message with the specified category and priority.

</member>
<member name="D:SDL_LogOutputFunction" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="186">
\brief The prototype for the log output function

</member>
<member name="M:SDL_LogGetOutputFunction(=FUNC:System.Void(System.Void*,System.Int32,SDL_LogPriority,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)*,System.Void**)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="191">
\brief Get the current log output function.

</member>
<member name="M:SDL_LogSetOutputFunction(=FUNC:System.Void(System.Void*,System.Int32,SDL_LogPriority,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*),System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_log.h" line="196">
\brief This function allows you to replace the default log output
       function with one of your own.

</member>
<member name="M:SDL_ShowMessageBox(SDL_MessageBoxData!System.Runtime.CompilerServices.IsConst*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_messagebox.h" line="105">
  \brief Create a modal message box.

  \param messageboxdata The SDL_MessageBoxData structure with title, text, etc.
  \param buttonid The pointer to which user id of hit button should be copied.

  \return -1 on error, otherwise 0 and buttonid contains user id of button
          hit or -1 if dialog was closed.

  \note This function should be called on the thread that created the parent
        window, or on the main thread if the messagebox has no parent.  It will
        block execution of that thread until the user clicks a button or
        closes the messagebox.

</member>
<member name="M:SDL_ShowSimpleMessageBox(System.UInt32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_messagebox.h" line="121">
  \brief Create a simple modal message box

  \param flags    ::SDL_MessageBoxFlags
  \param title    UTF-8 title text
  \param message  UTF-8 message text
  \param window   The parent window, or NULL for no parent

  \return 0 on success, -1 on error

  \sa SDL_ShowMessageBox

</member>
<member name="M:SDL_GetPowerInfo(System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_power.h" line="52">
  \brief Get the current power supply details.

  \param secs Seconds of battery life left. You can pass a NULL here if
              you don't care. Will return -1 if we can't determine a
              value, or we're not running on a battery.

  \param pct Percentage of battery life left, between 0 and 100. You can
             pass a NULL here if you don't care. Will return -1 if we
             can't determine a value, or we're not running on a battery.

  \return The state of the battery (if any).

</member>
<member name="T:SDL_RendererInfo" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="75">
\brief Information on the capabilities of a render driver or context.

</member>
<member name="T:SDL_Renderer" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="118">
\brief A structure representing rendering state

</member>
<member name="T:SDL_Texture" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="124">
\brief An efficient driver-specific representation of pixel data

</member>
<member name="M:SDL_GetNumRenderDrivers" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="133">
  \brief Get the number of 2D rendering drivers available for the current
         display.

  A render driver is a set of code that handles rendering and texture
  management on a particular display.  Normally there is only one, but
  some drivers may have several available with different capabilities.

  \sa SDL_GetRenderDriverInfo()
  \sa SDL_CreateRenderer()

</member>
<member name="M:SDL_GetRenderDriverInfo(System.Int32,SDL_RendererInfo*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="146">
  \brief Get information about a specific 2D rendering driver for the current
         display.

  \param index The index of the driver to query information about.
  \param info  A pointer to an SDL_RendererInfo struct to be filled with
               information on the rendering driver.

  \return 0 on success, -1 if the index was out of range.

  \sa SDL_CreateRenderer()

</member>
<member name="M:SDL_CreateWindowAndRenderer(System.Int32,System.Int32,System.UInt32,SDL_Window**,SDL_Renderer**)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="161">
  \brief Create a window and default renderer

  \param width    The width of the window
  \param height   The height of the window
  \param window_flags The flags used to create the window
  \param window   A pointer filled with the window, or NULL on error
  \param renderer A pointer filled with the renderer, or NULL on error

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_CreateRenderer(SDL_Window*,System.Int32,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="177">
  \brief Create a 2D rendering context for a window.

  \param window The window where rendering is displayed.
  \param index    The index of the rendering driver to initialize, or -1 to
                  initialize the first one supporting the requested flags.
  \param flags    ::SDL_RendererFlags.

  \return A valid rendering context or NULL if there was an error.

  \sa SDL_CreateSoftwareRenderer()
  \sa SDL_GetRendererInfo()
  \sa SDL_DestroyRenderer()

</member>
<member name="M:SDL_CreateSoftwareRenderer(SDL_Surface*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="194">
  \brief Create a 2D software rendering context for a surface.

  \param surface The surface where rendering is done.

  \return A valid rendering context or NULL if there was an error.

  \sa SDL_CreateRenderer()
  \sa SDL_DestroyRenderer()

</member>
<member name="M:SDL_GetRenderer(SDL_Window*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="206">
\brief Get the renderer associated with a window.

</member>
<member name="M:SDL_GetRendererInfo(SDL_Renderer*,SDL_RendererInfo*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="211">
\brief Get information about a rendering context.

</member>
<member name="M:SDL_GetRendererOutputSize(SDL_Renderer*,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="217">
\brief Get the output size in pixels of a rendering context.

</member>
<member name="M:SDL_CreateTexture(SDL_Renderer*,System.UInt32,System.Int32,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="223">
  \brief Create a texture for a rendering context.

  \param renderer The renderer.
  \param format The format of the texture.
  \param access One of the enumerated values in ::SDL_TextureAccess.
  \param w      The width of the texture in pixels.
  \param h      The height of the texture in pixels.

  \return The created texture is returned, or NULL if no rendering context was
          active,  the format was unsupported, or the width or height were out
          of range.

  \note The contents of the texture are not defined at creation.

  \sa SDL_QueryTexture()
  \sa SDL_UpdateTexture()
  \sa SDL_DestroyTexture()

</member>
<member name="M:SDL_CreateTextureFromSurface(SDL_Renderer*,SDL_Surface*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="247">
  \brief Create a texture from an existing surface.

  \param renderer The renderer.
  \param surface The surface containing pixel data used to fill the texture.

  \return The created texture is returned, or NULL on error.

  \note The surface is not modified or freed by this function.

  \sa SDL_QueryTexture()
  \sa SDL_DestroyTexture()

</member>
<member name="M:SDL_QueryTexture(SDL_Texture*,System.UInt32*,System.Int32*,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="262">
  \brief Query the attributes of a texture

  \param texture A texture to be queried.
  \param format  A pointer filled in with the raw format of the texture.  The
                 actual format may differ, but pixel transfers will use this
                 format.
  \param access  A pointer filled in with the actual access to the texture.
  \param w       A pointer filled in with the width of the texture in pixels.
  \param h       A pointer filled in with the height of the texture in pixels.

  \return 0 on success, or -1 if the texture is not valid.

</member>
<member name="M:SDL_SetTextureColorMod(SDL_Texture*,System.Byte,System.Byte,System.Byte)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="279">
  \brief Set an additional color value used in render copy operations.

  \param texture The texture to update.
  \param r       The red color value multiplied into copy operations.
  \param g       The green color value multiplied into copy operations.
  \param b       The blue color value multiplied into copy operations.

  \return 0 on success, or -1 if the texture is not valid or color modulation
          is not supported.

  \sa SDL_GetTextureColorMod()

</member>
<member name="M:SDL_GetTextureColorMod(SDL_Texture*,System.Byte*,System.Byte*,System.Byte*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="296">
  \brief Get the additional color value used in render copy operations.

  \param texture The texture to query.
  \param r         A pointer filled in with the current red color value.
  \param g         A pointer filled in with the current green color value.
  \param b         A pointer filled in with the current blue color value.

  \return 0 on success, or -1 if the texture is not valid.

  \sa SDL_SetTextureColorMod()

</member>
<member name="M:SDL_SetTextureAlphaMod(SDL_Texture*,System.Byte)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="312">
  \brief Set an additional alpha value used in render copy operations.

  \param texture The texture to update.
  \param alpha     The alpha value multiplied into copy operations.

  \return 0 on success, or -1 if the texture is not valid or alpha modulation
          is not supported.

  \sa SDL_GetTextureAlphaMod()

</member>
<member name="M:SDL_GetTextureAlphaMod(SDL_Texture*,System.Byte*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="326">
  \brief Get the additional alpha value used in render copy operations.

  \param texture The texture to query.
  \param alpha     A pointer filled in with the current alpha value.

  \return 0 on success, or -1 if the texture is not valid.

  \sa SDL_SetTextureAlphaMod()

</member>
<member name="M:SDL_SetTextureBlendMode(SDL_Texture*,SDL_BlendMode)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="339">
  \brief Set the blend mode used for texture copy operations.

  \param texture The texture to update.
  \param blendMode ::SDL_BlendMode to use for texture blending.

  \return 0 on success, or -1 if the texture is not valid or the blend mode is
          not supported.

  \note If the blend mode is not supported, the closest supported mode is
        chosen.

  \sa SDL_GetTextureBlendMode()

</member>
<member name="M:SDL_GetTextureBlendMode(SDL_Texture*,SDL_BlendMode*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="356">
  \brief Get the blend mode used for texture copy operations.

  \param texture   The texture to query.
  \param blendMode A pointer filled in with the current blend mode.

  \return 0 on success, or -1 if the texture is not valid.

  \sa SDL_SetTextureBlendMode()

</member>
<member name="M:SDL_UpdateTexture(SDL_Texture*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,System.Void!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="369">
  \brief Update the given texture rectangle with new pixel data.

  \param texture   The texture to update
  \param rect      A pointer to the rectangle of pixels to update, or NULL to
                   update the entire texture.
  \param pixels    The raw pixel data in the format of the texture.
  \param pitch     The number of bytes in a row of pixel data, including padding between lines.

  The pixel data must be in the format of the texture. The pixel format can be
  queried with SDL_QueryTexture.

  \return 0 on success, or -1 if the texture is not valid.

  \note This is a fairly slow function.

</member>
<member name="M:SDL_UpdateYUVTexture(SDL_Texture*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,System.Byte!System.Runtime.CompilerServices.IsConst*,System.Int32,System.Byte!System.Runtime.CompilerServices.IsConst*,System.Int32,System.Byte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="389">
  \brief Update a rectangle within a planar YV12 or IYUV texture with new pixel data.

  \param texture   The texture to update
  \param rect      A pointer to the rectangle of pixels to update, or NULL to
                   update the entire texture.
  \param Yplane    The raw pixel data for the Y plane.
  \param Ypitch    The number of bytes between rows of pixel data for the Y plane.
  \param Uplane    The raw pixel data for the U plane.
  \param Upitch    The number of bytes between rows of pixel data for the U plane.
  \param Vplane    The raw pixel data for the V plane.
  \param Vpitch    The number of bytes between rows of pixel data for the V plane.

  \return 0 on success, or -1 if the texture is not valid.

  \note You can use SDL_UpdateTexture() as long as your pixel data is
        a contiguous block of Y and U/V planes in the proper order, but
        this function is available if your pixel data is not contiguous.

</member>
<member name="M:SDL_LockTexture(SDL_Texture*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,System.Void**,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="414">
  \brief Lock a portion of the texture for write-only pixel access.

  \param texture   The texture to lock for access, which was created with
                   ::SDL_TEXTUREACCESS_STREAMING.
  \param rect      A pointer to the rectangle to lock for access. If the rect
                   is NULL, the entire texture will be locked.
  \param pixels    This is filled in with a pointer to the locked pixels,
                   appropriately offset by the locked area.
  \param pitch     This is filled in with the pitch of the locked pixels.

  \return 0 on success, or -1 if the texture is not valid or was not created with ::SDL_TEXTUREACCESS_STREAMING.

  \sa SDL_UnlockTexture()

</member>
<member name="M:SDL_UnlockTexture(SDL_Texture*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="433">
  \brief Unlock a texture, uploading the changes to video memory, if needed.

  \sa SDL_LockTexture()

</member>
<member name="M:SDL_RenderTargetSupported(SDL_Renderer*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="440">
 \brief Determines whether a window supports the use of render targets

 \param renderer The renderer that will be checked

 \return SDL_TRUE if supported, SDL_FALSE if not.

</member>
<member name="M:SDL_SetRenderTarget(SDL_Renderer*,SDL_Texture*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="449">
 \brief Set a texture as the current rendering target.

 \param renderer The renderer.
 \param texture The targeted texture, which must be created with the SDL_TEXTUREACCESS_TARGET flag, or NULL for the default render target

 \return 0 on success, or -1 on error

  \sa SDL_GetRenderTarget()

</member>
<member name="M:SDL_GetRenderTarget(SDL_Renderer*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="462">
 \brief Get the current render target or NULL for the default render target.

 \return The current render target

  \sa SDL_SetRenderTarget()

</member>
<member name="M:SDL_RenderSetLogicalSize(SDL_Renderer*,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="471">
  \brief Set device independent resolution for rendering

  \param renderer The renderer for which resolution should be set.
  \param w      The width of the logical resolution
  \param h      The height of the logical resolution

  This function uses the viewport and scaling functionality to allow a fixed logical
  resolution for rendering, regardless of the actual output resolution.  If the actual
  output resolution doesn't have the same aspect ratio the output rendering will be
  centered within the output display.

  If the output display is a window, mouse events in the window will be filtered
  and scaled so they seem to arrive within the logical resolution.

  \note If this function results in scaling or subpixel drawing by the
        rendering backend, it will be handled using the appropriate
        quality hints.

  \sa SDL_RenderGetLogicalSize()
  \sa SDL_RenderSetScale()
  \sa SDL_RenderSetViewport()

</member>
<member name="M:SDL_RenderGetLogicalSize(SDL_Renderer*,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="496">
  \brief Get device independent resolution for rendering

  \param renderer The renderer from which resolution should be queried.
  \param w      A pointer filled with the width of the logical resolution
  \param h      A pointer filled with the height of the logical resolution

  \sa SDL_RenderSetLogicalSize()

</member>
<member name="M:SDL_RenderSetIntegerScale(SDL_Renderer*,SDL_bool)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="507">
  \brief Set whether to force integer scales for resolution-independent rendering

  \param renderer The renderer for which integer scaling should be set.
  \param enable   Enable or disable integer scaling

  This function restricts the logical viewport to integer values - that is, when
  a resolution is between two multiples of a logical size, the viewport size is
  rounded down to the lower multiple.

  \sa SDL_RenderSetLogicalSize()

</member>
<member name="M:SDL_RenderGetIntegerScale(SDL_Renderer*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="522">
  \brief Get whether integer scales are forced for resolution-independent rendering

  \param renderer The renderer from which integer scaling should be queried.

  \sa SDL_RenderSetIntegerScale()

</member>
<member name="M:SDL_RenderSetViewport(SDL_Renderer*,SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="531">
  \brief Set the drawing area for rendering on the current target.

  \param renderer The renderer for which the drawing area should be set.
  \param rect The rectangle representing the drawing area, or NULL to set the viewport to the entire target.

  The x,y of the viewport rect represents the origin for rendering.

  \return 0 on success, or -1 on error

  \note If the window associated with the renderer is resized, the viewport is automatically reset.

  \sa SDL_RenderGetViewport()
  \sa SDL_RenderSetLogicalSize()

</member>
<member name="M:SDL_RenderGetViewport(SDL_Renderer*,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="549">
  \brief Get the drawing area for the current target.

  \sa SDL_RenderSetViewport()

</member>
<member name="M:SDL_RenderSetClipRect(SDL_Renderer*,SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="557">
  \brief Set the clip rectangle for the current target.

  \param renderer The renderer for which clip rectangle should be set.
  \param rect   A pointer to the rectangle to set as the clip rectangle, or
                NULL to disable clipping.

  \return 0 on success, or -1 on error

  \sa SDL_RenderGetClipRect()

</member>
<member name="M:SDL_RenderGetClipRect(SDL_Renderer*,SDL_Rect*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="571">
  \brief Get the clip rectangle for the current target.

  \param renderer The renderer from which clip rectangle should be queried.
  \param rect   A pointer filled in with the current clip rectangle, or
                an empty rectangle if clipping is disabled.

  \sa SDL_RenderSetClipRect()

</member>
<member name="M:SDL_RenderIsClipEnabled(SDL_Renderer*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="583">
  \brief Get whether clipping is enabled on the given renderer.

  \param renderer The renderer from which clip state should be queried.

  \sa SDL_RenderGetClipRect()

</member>
<member name="M:SDL_RenderSetScale(SDL_Renderer*,System.Single,System.Single)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="593">
  \brief Set the drawing scale for rendering on the current target.

  \param renderer The renderer for which the drawing scale should be set.
  \param scaleX The horizontal scaling factor
  \param scaleY The vertical scaling factor

  The drawing coordinates are scaled by the x/y scaling factors
  before they are used by the renderer.  This allows resolution
  independent drawing with a single coordinate system.

  \note If this results in scaling or subpixel drawing by the
        rendering backend, it will be handled using the appropriate
        quality hints.  For best results use integer scaling factors.

  \sa SDL_RenderGetScale()
  \sa SDL_RenderSetLogicalSize()

</member>
<member name="M:SDL_RenderGetScale(SDL_Renderer*,System.Single*,System.Single*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="614">
  \brief Get the drawing scale for the current target.

  \param renderer The renderer from which drawing scale should be queried.
  \param scaleX A pointer filled in with the horizontal scaling factor
  \param scaleY A pointer filled in with the vertical scaling factor

  \sa SDL_RenderSetScale()

</member>
<member name="M:SDL_SetRenderDrawColor(SDL_Renderer*,System.Byte,System.Byte,System.Byte,System.Byte)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="626">
  \brief Set the color used for drawing operations (Rect, Line and Clear).

  \param renderer The renderer for which drawing color should be set.
  \param r The red value used to draw on the rendering target.
  \param g The green value used to draw on the rendering target.
  \param b The blue value used to draw on the rendering target.
  \param a The alpha value used to draw on the rendering target, usually
           ::SDL_ALPHA_OPAQUE (255).

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_GetRenderDrawColor(SDL_Renderer*,System.Byte*,System.Byte*,System.Byte*,System.Byte*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="642">
  \brief Get the color used for drawing operations (Rect, Line and Clear).

  \param renderer The renderer from which drawing color should be queried.
  \param r A pointer to the red value used to draw on the rendering target.
  \param g A pointer to the green value used to draw on the rendering target.
  \param b A pointer to the blue value used to draw on the rendering target.
  \param a A pointer to the alpha value used to draw on the rendering target,
           usually ::SDL_ALPHA_OPAQUE (255).

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_SetRenderDrawBlendMode(SDL_Renderer*,SDL_BlendMode)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="658">
  \brief Set the blend mode used for drawing operations (Fill and Line).

  \param renderer The renderer for which blend mode should be set.
  \param blendMode ::SDL_BlendMode to use for blending.

  \return 0 on success, or -1 on error

  \note If the blend mode is not supported, the closest supported mode is
        chosen.

  \sa SDL_GetRenderDrawBlendMode()

</member>
<member name="M:SDL_GetRenderDrawBlendMode(SDL_Renderer*,SDL_BlendMode*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="674">
  \brief Get the blend mode used for drawing operations.

  \param renderer The renderer from which blend mode should be queried.
  \param blendMode A pointer filled in with the current blend mode.

  \return 0 on success, or -1 on error

  \sa SDL_SetRenderDrawBlendMode()

</member>
<member name="M:SDL_RenderClear(SDL_Renderer*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="687">
  \brief Clear the current rendering target with the drawing color

  This function clears the entire rendering target, ignoring the viewport and
  the clip rectangle.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawPoint(SDL_Renderer*,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="697">
  \brief Draw a point on the current rendering target.

  \param renderer The renderer which should draw a point.
  \param x The x coordinate of the point.
  \param y The y coordinate of the point.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawPoints(SDL_Renderer*,SDL_Point!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="709">
  \brief Draw multiple points on the current rendering target.

  \param renderer The renderer which should draw multiple points.
  \param points The points to draw
  \param count The number of points to draw

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawLine(SDL_Renderer*,System.Int32,System.Int32,System.Int32,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="722">
  \brief Draw a line on the current rendering target.

  \param renderer The renderer which should draw a line.
  \param x1 The x coordinate of the start point.
  \param y1 The y coordinate of the start point.
  \param x2 The x coordinate of the end point.
  \param y2 The y coordinate of the end point.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawLines(SDL_Renderer*,SDL_Point!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="736">
  \brief Draw a series of connected lines on the current rendering target.

  \param renderer The renderer which should draw multiple lines.
  \param points The points along the lines
  \param count The number of points, drawing count-1 lines

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawRect(SDL_Renderer*,SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="749">
  \brief Draw a rectangle on the current rendering target.

  \param renderer The renderer which should draw a rectangle.
  \param rect A pointer to the destination rectangle, or NULL to outline the entire rendering target.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawRects(SDL_Renderer*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="760">
  \brief Draw some number of rectangles on the current rendering target.

  \param renderer The renderer which should draw multiple rectangles.
  \param rects A pointer to an array of destination rectangles.
  \param count The number of rectangles.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderFillRect(SDL_Renderer*,SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="773">
  \brief Fill a rectangle on the current rendering target with the drawing color.

  \param renderer The renderer which should fill a rectangle.
  \param rect A pointer to the destination rectangle, or NULL for the entire
              rendering target.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderFillRects(SDL_Renderer*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="785">
  \brief Fill some number of rectangles on the current rendering target with the drawing color.

  \param renderer The renderer which should fill multiple rectangles.
  \param rects A pointer to an array of destination rectangles.
  \param count The number of rectangles.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderCopy(SDL_Renderer*,SDL_Texture*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Rect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="798">
  \brief Copy a portion of the texture to the current rendering target.

  \param renderer The renderer which should copy parts of a texture.
  \param texture The source texture.
  \param srcrect   A pointer to the source rectangle, or NULL for the entire
                   texture.
  \param dstrect   A pointer to the destination rectangle, or NULL for the
                   entire rendering target.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderCopyEx(SDL_Renderer*,SDL_Texture*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,System.Double!System.Runtime.CompilerServices.IsConst,SDL_Point!System.Runtime.CompilerServices.IsConst*,SDL_RendererFlip!System.Runtime.CompilerServices.IsConst)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="815">
  \brief Copy a portion of the source texture to the current rendering target, rotating it by angle around the given center

  \param renderer The renderer which should copy parts of a texture.
  \param texture The source texture.
  \param srcrect   A pointer to the source rectangle, or NULL for the entire
                   texture.
  \param dstrect   A pointer to the destination rectangle, or NULL for the
                   entire rendering target.
  \param angle    An angle in degrees that indicates the rotation that will be applied to dstrect, rotating it in a clockwise direction
  \param center   A pointer to a point indicating the point around which dstrect will be rotated (if NULL, rotation will be done around dstrect.w/2, dstrect.h/2).
  \param flip     An SDL_RendererFlip value stating which flipping actions should be performed on the texture

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawPointF(SDL_Renderer*,System.Single,System.Single)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="839">
  \brief Draw a point on the current rendering target.

  \param renderer The renderer which should draw a point.
  \param x The x coordinate of the point.
  \param y The y coordinate of the point.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawPointsF(SDL_Renderer*,SDL_FPoint!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="851">
  \brief Draw multiple points on the current rendering target.

  \param renderer The renderer which should draw multiple points.
  \param points The points to draw
  \param count The number of points to draw

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawLineF(SDL_Renderer*,System.Single,System.Single,System.Single,System.Single)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="864">
  \brief Draw a line on the current rendering target.

  \param renderer The renderer which should draw a line.
  \param x1 The x coordinate of the start point.
  \param y1 The y coordinate of the start point.
  \param x2 The x coordinate of the end point.
  \param y2 The y coordinate of the end point.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawLinesF(SDL_Renderer*,SDL_FPoint!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="878">
  \brief Draw a series of connected lines on the current rendering target.

  \param renderer The renderer which should draw multiple lines.
  \param points The points along the lines
  \param count The number of points, drawing count-1 lines

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawRectF(SDL_Renderer*,SDL_FRect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="891">
  \brief Draw a rectangle on the current rendering target.

  \param renderer The renderer which should draw a rectangle.
  \param rect A pointer to the destination rectangle, or NULL to outline the entire rendering target.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderDrawRectsF(SDL_Renderer*,SDL_FRect!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="902">
  \brief Draw some number of rectangles on the current rendering target.

  \param renderer The renderer which should draw multiple rectangles.
  \param rects A pointer to an array of destination rectangles.
  \param count The number of rectangles.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderFillRectF(SDL_Renderer*,SDL_FRect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="915">
  \brief Fill a rectangle on the current rendering target with the drawing color.

  \param renderer The renderer which should fill a rectangle.
  \param rect A pointer to the destination rectangle, or NULL for the entire
              rendering target.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderFillRectsF(SDL_Renderer*,SDL_FRect!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="927">
  \brief Fill some number of rectangles on the current rendering target with the drawing color.

  \param renderer The renderer which should fill multiple rectangles.
  \param rects A pointer to an array of destination rectangles.
  \param count The number of rectangles.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderCopyF(SDL_Renderer*,SDL_Texture*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_FRect!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="940">
  \brief Copy a portion of the texture to the current rendering target.

  \param renderer The renderer which should copy parts of a texture.
  \param texture The source texture.
  \param srcrect   A pointer to the source rectangle, or NULL for the entire
                   texture.
  \param dstrect   A pointer to the destination rectangle, or NULL for the
                   entire rendering target.

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderCopyExF(SDL_Renderer*,SDL_Texture*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,SDL_FRect!System.Runtime.CompilerServices.IsConst*,System.Double!System.Runtime.CompilerServices.IsConst,SDL_FPoint!System.Runtime.CompilerServices.IsConst*,SDL_RendererFlip!System.Runtime.CompilerServices.IsConst)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="957">
  \brief Copy a portion of the source texture to the current rendering target, rotating it by angle around the given center

  \param renderer The renderer which should copy parts of a texture.
  \param texture The source texture.
  \param srcrect   A pointer to the source rectangle, or NULL for the entire
                   texture.
  \param dstrect   A pointer to the destination rectangle, or NULL for the
                   entire rendering target.
  \param angle    An angle in degrees that indicates the rotation that will be applied to dstrect, rotating it in a clockwise direction
  \param center   A pointer to a point indicating the point around which dstrect will be rotated (if NULL, rotation will be done around dstrect.w/2, dstrect.h/2).
  \param flip     An SDL_RendererFlip value stating which flipping actions should be performed on the texture

  \return 0 on success, or -1 on error

</member>
<member name="M:SDL_RenderReadPixels(SDL_Renderer*,SDL_Rect!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.Void*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="980">
  \brief Read pixels from the current rendering target.

  \param renderer The renderer from which pixels should be read.
  \param rect   A pointer to the rectangle to read, or NULL for the entire
                render target.
  \param format The desired format of the pixel data, or 0 to use the format
                of the rendering target
  \param pixels A pointer to be filled in with the pixel data
  \param pitch  The pitch of the pixels parameter.

  \return 0 on success, or -1 if pixel reading is not supported.

  \warning This is a very slow operation, and should not be used frequently.

</member>
<member name="M:SDL_RenderPresent(SDL_Renderer*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="1000">
\brief Update the screen with rendering performed.

</member>
<member name="M:SDL_DestroyTexture(SDL_Texture*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="1005">
  \brief Destroy the specified texture.

  \sa SDL_CreateTexture()
  \sa SDL_CreateTextureFromSurface()

</member>
<member name="M:SDL_DestroyRenderer(SDL_Renderer*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="1013">
  \brief Destroy the rendering context for a window and free associated
         textures.

  \sa SDL_CreateRenderer()

</member>
<member name="M:SDL_RenderFlush(SDL_Renderer*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="1021">
  \brief Force the rendering context to flush any pending commands to the
         underlying rendering API.

  You do not need to (and in fact, shouldn't) call this function unless
  you are planning to call into OpenGL/Direct3D/Metal/whatever directly
  in addition to using an SDL_Renderer.

  This is for a very-specific case: if you are using SDL's render API,
  you asked for a specific renderer backend (OpenGL, Direct3D, etc),
  you set SDL_HINT_RENDER_BATCHING to "1", and you plan to make
  OpenGL/D3D/whatever calls in addition to SDL render API calls. If all of
  this applies, you should call SDL_RenderFlush() between calls to SDL's
  render API and the low-level API you're using in cooperation.

  In all other cases, you can ignore this function. This is only here to
  get maximum performance out of a specific situation. In all other cases,
  SDL will do the right thing, perhaps at a performance loss.

  This function is first available in SDL 2.0.10, and is not needed in
  2.0.9 and earlier, as earlier versions did not queue rendering commands
  at all, instead flushing them to the OS immediately.

</member>
<member name="M:SDL_GL_BindTexture(SDL_Texture*,System.Single*,System.Single*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="1047">
  \brief Bind the texture to the current OpenGL/ES/ES2 context for use with
         OpenGL instructions.

  \param texture  The SDL texture to bind
  \param texw     A pointer to a float that will be filled with the texture width
  \param texh     A pointer to a float that will be filled with the texture height

  \return 0 on success, or -1 if the operation is not supported

</member>
<member name="M:SDL_GL_UnbindTexture(SDL_Texture*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="1059">
  \brief Unbind a texture from the current OpenGL/ES/ES2 context.

  \param texture  The SDL texture to unbind

  \return 0 on success, or -1 if the operation is not supported

</member>
<member name="M:SDL_RenderGetMetalLayer(SDL_Renderer*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_render.h" line="1068">
  \brief Get the CAMetalLayer associated with the given Metal renderer

  \param renderer The renderer to query

  \return CAMetalLayer* on success, or NULL if the renderer isn't a Metal renderer

  \sa SDL_RenderGetMetalCommandEncoder()

</member>
<!-- 'M:SDL_RenderGetMetalCommandEncoder(SDL_Renderer*)' 멤버에 대한 잘못된 형식의 XML 문서 주석을 삭제합니다.-->
<member name="T:_SDL_Sensor" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_sensor.h

  Include file for SDL sensor event handling


  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

  \brief SDL_sensor.h

  In order to use these functions, SDL_Init() must have been called
  with the ::SDL_INIT_SENSOR flag.  This causes SDL to scan the system
  for sensors, and load appropriate drivers.

</member>
<member name="D:SDL_SensorID" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="54">
 This is a unique ID for a sensor for the time it is connected to the system,
 and is never reused for the lifetime of the application.

 The ID value starts at 0 and increments from there. The value -1 is an invalid ID.

</member>
<member name="M:SDL_NumSensors" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="77">
 Accelerometer sensor

 The accelerometer returns the current acceleration in SI meters per
 second squared. This includes gravity, so a device at rest will have
 an acceleration of SDL_STANDARD_GRAVITY straight down.

 values[0]: Acceleration on the x axis
 values[1]: Acceleration on the y axis
 values[2]: Acceleration on the z axis

 For phones held in portrait mode, the axes are defined as follows:
 -X ... +X : left ... right
 -Y ... +Y : bottom ... top
 -Z ... +Z : farther ... closer
 
 The axis data is not changed when the phone is rotated.

 \sa SDL_GetDisplayOrientation()

 Gyroscope sensor

 The gyroscope returns the current rate of rotation in radians per second.
 The rotation is positive in the counter-clockwise direction. That is,
 an observer looking from a positive location on one of the axes would
 see positive rotation on that axis when it appeared to be rotating
 counter-clockwise.

 values[0]: Angular speed around the x axis
 values[1]: Angular speed around the y axis
 values[2]: Angular speed around the z axis

 For phones held in portrait mode, the axes are defined as follows:
 -X ... +X : left ... right
 -Y ... +Y : bottom ... top
 -Z ... +Z : farther ... closer
 
 The axis data is not changed when the phone is rotated.

 \sa SDL_GetDisplayOrientation()

\brief Count the number of sensors attached to the system right now

</member>
<member name="M:SDL_SensorGetDeviceName(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="129">
  \brief Get the implementation dependent name of a sensor.

  This can be called before any sensors are opened.
 
  \return The sensor name, or NULL if device_index is out of range.

</member>
<member name="M:SDL_SensorGetDeviceType(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="138">
  \brief Get the type of a sensor.

  This can be called before any sensors are opened.

  \return The sensor type, or SDL_SENSOR_INVALID if device_index is out of range.

</member>
<member name="M:SDL_SensorGetDeviceNonPortableType(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="147">
  \brief Get the platform dependent type of a sensor.

  This can be called before any sensors are opened.

  \return The sensor platform dependent type, or -1 if device_index is out of range.

</member>
<member name="M:SDL_SensorGetDeviceInstanceID(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="156">
  \brief Get the instance ID of a sensor.

  This can be called before any sensors are opened.

  \return The sensor instance ID, or -1 if device_index is out of range.

</member>
<member name="M:SDL_SensorOpen(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="165">
  \brief Open a sensor for use.

  The index passed as an argument refers to the N'th sensor on the system.

  \return A sensor identifier, or NULL if an error occurred.

</member>
<member name="M:SDL_SensorFromInstanceID(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="174">
Return the SDL_Sensor associated with an instance id.

</member>
<member name="M:SDL_SensorGetName(_SDL_Sensor*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="179">
  \brief Get the implementation dependent name of a sensor.

  \return The sensor name, or NULL if the sensor is NULL.

</member>
<member name="M:SDL_SensorGetType(_SDL_Sensor*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="186">
  \brief Get the type of a sensor.

  This can be called before any sensors are opened.

  \return The sensor type, or SDL_SENSOR_INVALID if the sensor is NULL.

</member>
<member name="M:SDL_SensorGetNonPortableType(_SDL_Sensor*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="195">
  \brief Get the platform dependent type of a sensor.

  This can be called before any sensors are opened.

  \return The sensor platform dependent type, or -1 if the sensor is NULL.

</member>
<member name="M:SDL_SensorGetInstanceID(_SDL_Sensor*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="204">
  \brief Get the instance ID of a sensor.

  This can be called before any sensors are opened.

  \return The sensor instance ID, or -1 if the sensor is NULL.

</member>
<member name="M:SDL_SensorGetData(_SDL_Sensor*,System.Single*,System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="213">
  Get the current state of an opened sensor.

  The number of values and interpretation of the data is sensor dependent.

  \param sensor The sensor to query
  \param data A pointer filled with the current sensor state
  \param num_values The number of values to write to data

  \return 0 or -1 if an error occurred.

</member>
<member name="M:SDL_SensorClose(_SDL_Sensor*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="226">
Close a sensor previously opened with SDL_SensorOpen()

</member>
<member name="M:SDL_SensorUpdate" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_sensor.h" line="231">
  Update the current state of the open sensors.

  This is called automatically by the event loop if sensor events are enabled.

  This needs to be called from the thread that initialized the sensor subsystem.

</member>
<member name="M:SDL_CreateShapedWindow(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

\file SDL_shape.h
 *
 * Header file for the shaped window API.

  \brief Create a window that can be shaped with the specified position, dimensions, and flags.

  \param title The title of the window, in UTF-8 encoding.
  \param x     The x position of the window, ::SDL_WINDOWPOS_CENTERED, or
               ::SDL_WINDOWPOS_UNDEFINED.
  \param y     The y position of the window, ::SDL_WINDOWPOS_CENTERED, or
               ::SDL_WINDOWPOS_UNDEFINED.
  \param w     The width of the window.
  \param h     The height of the window.
  \param flags The flags for the window, a mask of SDL_WINDOW_BORDERLESS with any of the following:
               ::SDL_WINDOW_OPENGL,     ::SDL_WINDOW_INPUT_GRABBED,
               ::SDL_WINDOW_HIDDEN,     ::SDL_WINDOW_RESIZABLE,
               ::SDL_WINDOW_MAXIMIZED,  ::SDL_WINDOW_MINIMIZED,
       ::SDL_WINDOW_BORDERLESS is always set, and ::SDL_WINDOW_FULLSCREEN is always unset.

  \return The window created, or NULL if window creation failed.

  \sa SDL_DestroyWindow()

</member>
<member name="M:SDL_IsShapedWindow(SDL_Window!System.Runtime.CompilerServices.IsConst*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_shape.h" line="68">
 \brief Return whether the given window is a shaped window.

 \param window The window to query for being shaped.

 \return SDL_TRUE if the window is a window that can be shaped, SDL_FALSE if the window is unshaped or NULL.

 \sa SDL_CreateShapedWindow

</member>
<member name="F:ShapeModeDefault" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_shape.h" line="81">
\brief The default mode, a binarized alpha cutoff of 1. 
</member>
<member name="F:ShapeModeBinarizeAlpha" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_shape.h" line="83">
\brief A binarized alpha cutoff with a given integer value. 
</member>
<member name="F:ShapeModeReverseBinarizeAlpha" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_shape.h" line="85">
\brief A binarized alpha cutoff with a given integer value, but with the opposite comparison. 
</member>
<member name="F:ShapeModeColorKey" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_shape.h" line="87">
\brief A color key is applied. 
</member>
<member name="T:SDL_WindowShapeMode" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_shape.h" line="100">
\brief A struct that tags the SDL_WindowShapeParams union with an enum describing the type of its contents. 
</member>
<member name="F:SDL_WindowShapeMode.mode" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_shape.h" line="102">
\brief The mode of these window-shape parameters. 
</member>
<member name="F:SDL_WindowShapeMode.parameters" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_shape.h" line="104">
\brief Window-shape parameters. 
</member>
<member name="M:SDL_SetWindowShape(SDL_Window*,SDL_Surface*,SDL_WindowShapeMode*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_shape.h" line="108">
 \brief Set the shape and parameters of a shaped window.

 \param window The shaped window whose parameters should be set.
 \param shape A surface encoding the desired shape for the window.
 \param shape_mode The parameters to set for the shaped window.

 \return 0 on success, SDL_INVALID_SHAPE_ARGUMENT on an invalid shape argument, or SDL_NONSHAPEABLE_WINDOW
           if the SDL_Window given does not reference a valid shaped window.

 \sa SDL_WindowShapeMode
 \sa SDL_GetShapedWindowMode.

</member>
<member name="M:SDL_GetShapedWindowMode(SDL_Window*,SDL_WindowShapeMode*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_shape.h" line="123">
 \brief Get the shape parameters of a shaped window.

 \param window The shaped window whose parameters should be retrieved.
 \param shape_mode An empty shape-mode structure to fill, or NULL to check whether the window has a shape.

 \return 0 if the window has a shape and, provided shape_mode was not NULL, shape_mode has been filled with the mode
           data, SDL_NONSHAPEABLE_WINDOW if the SDL_Window given is not a shaped window, or SDL_WINDOW_LACKS_SHAPE if
           the SDL_Window given is a shapeable window currently lacking a shape.

 \sa SDL_WindowShapeMode
 \sa SDL_SetWindowShape

</member>
<member name="D:SDL_WindowsMessageHook" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_system.h

  Include file for platform specific SDL API functions

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

\brief Set a function that is called for every windows message, before TranslateMessage()

</member>
<member name="M:SDL_Direct3D9GetAdapterIndex(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_system.h" line="52">
   \brief Returns the D3D9 adapter index that matches the specified display index.

   This adapter index can be passed to IDirect3D9::CreateDevice and controls
   on which monitor a full screen application will appear.

</member>
<member name="M:SDL_RenderGetD3D9Device(SDL_Renderer*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_system.h" line="61">
   \brief Returns the D3D device associated with a renderer, or NULL if it's not a D3D renderer.

   Once you are done using the device, you should release it to avoid a resource leak.

</member>
<member name="M:SDL_DXGIGetOutputInfo(System.Int32,System.Int32*,System.Int32*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_system.h" line="68">
   \brief Returns the DXGI Adapter and Output indices for the specified display index.

   These can be passed to EnumAdapters and EnumOutputs respectively to get the objects
   required to create a DX10 or DX11 device and swap chain.

</member>
<member name="M:SDL_IsTablet" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_system.h" line="266">
\brief Return true if the current device is a tablet.

</member>
<member name="M:SDL_GetTicks" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_timer.h

  Header for the SDL time management routines.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

 \brief Get the number of milliseconds since the SDL library initialization.

 \note This value wraps if the program runs for more than ~49 days.

</member>
<member name="M:SDL_GetPerformanceCounter" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_timer.h" line="47">
 \brief Compare SDL ticks values, and return true if A has passed B

 e.g. if you want to wait 100 ms, you could do this:
  Uint32 timeout = SDL_GetTicks() + 100;
  while (!SDL_TICKS_PASSED(SDL_GetTicks(), timeout)) {
      ... do work until timeout has elapsed
  }

\brief Get the current value of the high resolution counter

</member>
<member name="M:SDL_GetPerformanceFrequency" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_timer.h" line="63">
\brief Get the count per second of the high resolution counter

</member>
<member name="M:SDL_Delay(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_timer.h" line="68">
\brief Wait a specified number of milliseconds before returning.

</member>
<member name="D:SDL_TimerCallback" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_timer.h" line="73">
  Function prototype for the timer callback function.

  The callback function is passed the current timer interval and returns
  the next timer interval.  If the returned value is the same as the one
  passed in, the periodic alarm continues, otherwise a new alarm is
  scheduled.  If the callback returns 0, the periodic alarm is cancelled.

</member>
<member name="D:SDL_TimerID" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\sdl_timer.h" line="83">
Definition of the timer ID type.

</member>
<member name="M:SDL_AddTimer(System.UInt32,=FUNC:System.UInt32(System.UInt32,System.Void*),System.Void*)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_timer.h" line="88">
 \brief Add a new timer to the pool of timers already running.

 \return A timer ID, or 0 when an error occurs.

</member>
<member name="M:SDL_RemoveTimer(System.Int32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_timer.h" line="97">
 \brief Remove a timer knowing its ID.

 \return A boolean value indicating success or failure.

 \warning It is not safe to remove a timer multiple times.

</member>
<member name="T:SDL_version" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file SDL_version.h

  This header defines the current SDL version.

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

  \brief Information the version of SDL in use.

  Represents the library's version as three levels: major revision
  (increments with massive changes, additions, and enhancements),
  minor revision (increments with backwards-compatible changes to the
  major revision), and patchlevel (increments with fixes to the minor
  revision).

  \sa SDL_VERSION
  \sa SDL_GetVersion

</member>
<!-- 'M:SDL_GetVersion(SDL_version*)' 멤버에 대한 잘못된 형식의 XML 문서 주석을 삭제합니다.-->
<member name="M:SDL_GetRevision" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_version.h" line="135">
  \brief Get the code revision of SDL that is linked against your program.

  Returns an arbitrary string (a hash value) uniquely identifying the
  exact revision of the SDL library in use, and is only useful in comparing
  against other revisions. It is NOT an incrementing number.

</member>
<member name="M:SDL_GetRevisionNumber" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\sdl_version.h" line="144">
  \brief Get the revision number of SDL that is linked against your program.

  Returns a number uniquely identifying the exact revision of the SDL
  library in use. It is an incrementing number based on commits to
  hg.libsdl.org.

</member>
<member name="M:SDL_Init(System.UInt32)" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="M:IMG_Linked_Version" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="M:Mix_Linked_Version" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="D:SDLNet_version" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

</member>
<member name="M:SDLNet_Linked_Version" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\begin_code.h" line="22">
  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="M:TTF_Linked_Version" decl="true" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

  \file begin_code.h

  This file sets things up for C dynamic library function definitions,
  static inlined functions, and structures aligned at 4-byte alignment.
  If you don't like ugly C preprocessor code, don't look at this file. :)

</member>
<member name="T:WindowManager" decl="false" source="e:\desktop\cg++2\yanity\sdl\include\close_code.h" line="22">
  \file close_code.h

  This file reverses the effects of begin_code.h and should be included
  after you finish any function and structure declarations in your headers

</member>
</members>
</doc>