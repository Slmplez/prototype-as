/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.compiler.CategorizedProblem
 *  org.eclipse.jdt.core.compiler.CharOperation
 *  org.eclipse.jdt.core.compiler.CompilationProgress
 *  org.eclipse.jdt.internal.compiler.ClassFile
 *  org.eclipse.jdt.internal.compiler.CompilationResult
 *  org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy
 *  org.eclipse.jdt.internal.compiler.IProblemFactory
 *  org.eclipse.jdt.internal.compiler.batch.CompilationUnit
 *  org.eclipse.jdt.internal.compiler.batch.FileSystem
 *  org.eclipse.jdt.internal.compiler.batch.FileSystem$Classpath
 *  org.eclipse.jdt.internal.compiler.batch.FileSystem$ClasspathNormalizer
 *  org.eclipse.jdt.internal.compiler.batch.Main
 *  org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit
 *  org.eclipse.jdt.internal.compiler.problem.DefaultProblem
 *  org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory
 *  org.eclipse.jdt.internal.compiler.util.Messages
 *  org.eclipse.jdt.internal.compiler.util.SuffixConstants
 */
package org.eclipse.jdt.internal.compiler.tool;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import javax.annotation.processing.Processor;
import javax.tools.Diagnostic;
import javax.tools.DiagnosticListener;
import javax.tools.JavaFileManager;
import javax.tools.JavaFileObject;
import javax.tools.StandardJavaFileManager;
import javax.tools.StandardLocation;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.CompilationProgress;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.batch.CompilationUnit;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.batch.Main;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblem;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.tool.EclipseFileManager;
import org.eclipse.jdt.internal.compiler.tool.EclipseFileObject;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public class EclipseCompilerImpl
extends Main {
    private static final CompilationUnit[] NO_UNITS = new CompilationUnit[0];
    private HashMap<CompilationUnit, JavaFileObject> javaFileObjectMap;
    Iterable<? extends JavaFileObject> compilationUnits;
    public JavaFileManager fileManager;
    protected Processor[] processors;
    public DiagnosticListener<? super JavaFileObject> diagnosticListener;

    public EclipseCompilerImpl(PrintWriter out, PrintWriter err, boolean systemExitWhenFinished) {
        super(out, err, systemExitWhenFinished, null, null);
    }

    public boolean call() {
        try {
            try {
                if (this.proceed) {
                    this.globalProblemsCount = 0;
                    this.globalErrorsCount = 0;
                    this.globalWarningsCount = 0;
                    this.globalTasksCount = 0;
                    this.exportedClassFilesCounter = 0;
                    this.performCompilation();
                }
            }
            catch (IllegalArgumentException e) {
                this.logger.logException((Exception)e);
                if (this.systemExitWhenFinished) {
                    this.cleanup();
                    System.exit(-1);
                }
                this.cleanup();
                return false;
            }
            catch (RuntimeException e) {
                this.logger.logException((Exception)e);
                this.cleanup();
                return false;
            }
        }
        finally {
            this.cleanup();
        }
        return this.globalErrorsCount == 0;
    }

    private void cleanup() {
        this.logger.flush();
        this.logger.close();
        this.processors = null;
        try {
            if (this.fileManager != null) {
                this.fileManager.flush();
            }
        }
        catch (IOException iOException) {}
    }

    public CompilationUnit[] getCompilationUnits() {
        if (this.compilationUnits == null) {
            return NO_UNITS;
        }
        ArrayList<1> units = new ArrayList<1>();
        for (final JavaFileObject javaFileObject : this.compilationUnits) {
            if (javaFileObject.getKind() != JavaFileObject.Kind.SOURCE) {
                throw new IllegalArgumentException();
            }
            String name = javaFileObject.getName();
            name = name.replace('\\', '/');
            CompilationUnit compilationUnit = new CompilationUnit(null, name, null){

                public char[] getContents() {
                    try {
                        return javaFileObject.getCharContent(true).toString().toCharArray();
                    }
                    catch (IOException e) {
                        e.printStackTrace();
                        throw new AbortCompilationUnit(null, e, null);
                    }
                }
            };
            units.add(compilationUnit);
            this.javaFileObjectMap.put(compilationUnit, javaFileObject);
        }
        CompilationUnit[] compilationUnitArray = new CompilationUnit[units.size()];
        units.toArray(compilationUnitArray);
        return compilationUnitArray;
    }

    public IErrorHandlingPolicy getHandlingPolicy() {
        return new IErrorHandlingPolicy(){

            public boolean proceedOnErrors() {
                return false;
            }

            public boolean stopOnFirstError() {
                return false;
            }
        };
    }

    public IProblemFactory getProblemFactory() {
        return new DefaultProblemFactory(){

            public CategorizedProblem createProblem(final char[] originatingFileName, final int problemId, final String[] problemArguments, String[] messageArguments, final int severity, final int startPosition, final int endPosition, final int lineNumber, final int columnNumber) {
                DiagnosticListener<? super JavaFileObject> diagListener = EclipseCompilerImpl.this.diagnosticListener;
                if (diagListener != null) {
                    diagListener.report((Diagnostic<? super JavaFileObject>)new Diagnostic<JavaFileObject>(){

                        @Override
                        public String getCode() {
                            return Integer.toString(problemId);
                        }

                        @Override
                        public long getColumnNumber() {
                            return columnNumber;
                        }

                        @Override
                        public long getEndPosition() {
                            return endPosition;
                        }

                        @Override
                        public Diagnostic.Kind getKind() {
                            if ((severity & 1) != 0) {
                                return Diagnostic.Kind.ERROR;
                            }
                            if ((severity & 0x20) != 0) {
                                return Diagnostic.Kind.WARNING;
                            }
                            if (false) {
                                return Diagnostic.Kind.MANDATORY_WARNING;
                            }
                            return Diagnostic.Kind.OTHER;
                        }

                        @Override
                        public long getLineNumber() {
                            return lineNumber;
                        }

                        @Override
                        public String getMessage(Locale locale) {
                            if (locale != null) {
                                this.setLocale(locale);
                            }
                            return this.getLocalizedMessage(problemId, problemArguments);
                        }

                        @Override
                        public long getPosition() {
                            return startPosition;
                        }

                        @Override
                        public JavaFileObject getSource() {
                            File f = new File(new String(originatingFileName));
                            if (f.exists()) {
                                return new EclipseFileObject(null, f.toURI(), JavaFileObject.Kind.SOURCE, null);
                            }
                            return null;
                        }

                        @Override
                        public long getStartPosition() {
                            return startPosition;
                        }
                    });
                }
                return super.createProblem(originatingFileName, problemId, problemArguments, messageArguments, severity, startPosition, endPosition, lineNumber, columnNumber);
            }

            public CategorizedProblem createProblem(final char[] originatingFileName, final int problemId, final String[] problemArguments, int elaborationID, String[] messageArguments, final int severity, final int startPosition, final int endPosition, final int lineNumber, final int columnNumber) {
                DiagnosticListener<? super JavaFileObject> diagListener = EclipseCompilerImpl.this.diagnosticListener;
                if (diagListener != null) {
                    diagListener.report((Diagnostic<? super JavaFileObject>)new Diagnostic<JavaFileObject>(){

                        @Override
                        public String getCode() {
                            return Integer.toString(problemId);
                        }

                        @Override
                        public long getColumnNumber() {
                            return columnNumber;
                        }

                        @Override
                        public long getEndPosition() {
                            return endPosition;
                        }

                        @Override
                        public Diagnostic.Kind getKind() {
                            if ((severity & 1) != 0) {
                                return Diagnostic.Kind.ERROR;
                            }
                            if ((severity & 0x20) != 0) {
                                return Diagnostic.Kind.WARNING;
                            }
                            if (false) {
                                return Diagnostic.Kind.MANDATORY_WARNING;
                            }
                            return Diagnostic.Kind.OTHER;
                        }

                        @Override
                        public long getLineNumber() {
                            return lineNumber;
                        }

                        @Override
                        public String getMessage(Locale locale) {
                            if (locale != null) {
                                this.setLocale(locale);
                            }
                            return this.getLocalizedMessage(problemId, problemArguments);
                        }

                        @Override
                        public long getPosition() {
                            return startPosition;
                        }

                        @Override
                        public JavaFileObject getSource() {
                            File f = new File(new String(originatingFileName));
                            if (f.exists()) {
                                return new EclipseFileObject(null, f.toURI(), JavaFileObject.Kind.SOURCE, null);
                            }
                            return null;
                        }

                        @Override
                        public long getStartPosition() {
                            return startPosition;
                        }
                    });
                }
                return super.createProblem(originatingFileName, problemId, problemArguments, elaborationID, messageArguments, severity, startPosition, endPosition, lineNumber, columnNumber);
            }
        };
    }

    protected void initialize(PrintWriter outWriter, PrintWriter errWriter, boolean systemExit, Map customDefaultOptions, CompilationProgress compilationProgress) {
        super.initialize(outWriter, errWriter, systemExit, customDefaultOptions, compilationProgress);
        this.javaFileObjectMap = new HashMap();
    }

    protected void initializeAnnotationProcessorManager() {
        super.initializeAnnotationProcessorManager();
        if (this.batchCompiler.annotationProcessorManager != null && this.processors != null) {
            this.batchCompiler.annotationProcessorManager.setProcessors((Object[])this.processors);
        } else if (this.processors != null) {
            throw new UnsupportedOperationException("Cannot handle annotation processing");
        }
    }

    public void outputClassFiles(CompilationResult unitResult) {
        if (unitResult != null && (!unitResult.hasErrors() || this.proceedOnError)) {
            ClassFile[] classFiles = unitResult.getClassFiles();
            boolean generateClasspathStructure = this.fileManager.hasLocation(StandardLocation.CLASS_OUTPUT);
            String currentDestinationPath = this.destinationPath;
            File outputLocation = null;
            if (currentDestinationPath != null) {
                outputLocation = new File(currentDestinationPath);
                outputLocation.mkdirs();
            }
            int i = 0;
            int fileCount = classFiles.length;
            while (i < fileCount) {
                ClassFile classFile = classFiles[i];
                char[] filename = classFile.fileName();
                int length = filename.length;
                char[] relativeName = new char[length + 6];
                System.arraycopy(filename, 0, relativeName, 0, length);
                System.arraycopy(SuffixConstants.SUFFIX_class, 0, relativeName, length, 6);
                CharOperation.replace((char[])relativeName, (char)'/', (char)File.separatorChar);
                String relativeStringName = new String(relativeName);
                if (this.compilerOptions.verbose) {
                    this.out.println(Messages.bind((String)Messages.compilation_write, (Object[])new String[]{String.valueOf(this.exportedClassFilesCounter + 1), relativeStringName}));
                }
                try {
                    JavaFileObject javaFileForOutput = this.fileManager.getJavaFileForOutput(StandardLocation.CLASS_OUTPUT, new String(filename), JavaFileObject.Kind.CLASS, this.javaFileObjectMap.get(unitResult.compilationUnit));
                    if (generateClasspathStructure) {
                        if (currentDestinationPath != null) {
                            int index = CharOperation.lastIndexOf((char)File.separatorChar, (char[])relativeName);
                            if (index != -1) {
                                File currentFolder = new File(currentDestinationPath, relativeStringName.substring(0, index));
                                currentFolder.mkdirs();
                            }
                        } else {
                            String path = javaFileForOutput.toUri().getPath();
                            int index = path.lastIndexOf(47);
                            if (index != -1) {
                                File file = new File(path.substring(0, index));
                                file.mkdirs();
                            }
                        }
                    }
                    OutputStream openOutputStream = javaFileForOutput.openOutputStream();
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(openOutputStream);
                    bufferedOutputStream.write(classFile.header, 0, classFile.headerOffset);
                    bufferedOutputStream.write(classFile.contents, 0, classFile.contentsOffset);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                }
                catch (IOException e) {
                    this.logger.logNoClassFileCreated(currentDestinationPath, relativeStringName, e);
                }
                this.logger.logClassFile(generateClasspathStructure, currentDestinationPath, relativeStringName);
                ++this.exportedClassFilesCounter;
                ++i;
            }
            this.batchCompiler.lookupEnvironment.releaseClassFiles(classFiles);
        }
    }

    protected void setPaths(ArrayList bootclasspaths, String sourcepathClasspathArg, ArrayList sourcepathClasspaths, ArrayList classpaths, ArrayList extdirsClasspaths, ArrayList endorsedDirClasspaths, String customEncoding) {
        int n;
        FileSystem.Classpath classpath2;
        ArrayList fileSystemClasspaths = new ArrayList();
        EclipseFileManager javaFileManager = null;
        StandardJavaFileManager standardJavaFileManager = null;
        if (this.fileManager instanceof EclipseFileManager) {
            javaFileManager = (EclipseFileManager)this.fileManager;
        }
        if (this.fileManager instanceof StandardJavaFileManager) {
            standardJavaFileManager = (StandardJavaFileManager)this.fileManager;
        }
        if (javaFileManager != null && (javaFileManager.flags & 4) == 0 && (javaFileManager.flags & 2) != 0) {
            fileSystemClasspaths.addAll(this.handleEndorseddirs(null));
        }
        Iterable<? extends File> location = null;
        if (standardJavaFileManager != null) {
            location = standardJavaFileManager.getLocation(StandardLocation.PLATFORM_CLASS_PATH);
        }
        if (location != null) {
            for (File file : location) {
                FileSystem.Classpath classpath2 = FileSystem.getClasspath((String)file.getAbsolutePath(), null, null);
                if (classpath2 == null) continue;
                fileSystemClasspaths.add(classpath2);
            }
        }
        if (javaFileManager != null && (javaFileManager.flags & 1) == 0 && (javaFileManager.flags & 2) != 0) {
            fileSystemClasspaths.addAll(this.handleExtdirs(null));
        }
        if ((location = standardJavaFileManager != null ? standardJavaFileManager.getLocation(StandardLocation.SOURCE_PATH) : null) != null) {
            for (File file : location) {
                classpath2 = FileSystem.getClasspath((String)file.getAbsolutePath(), null, null);
                if (classpath2 == null) continue;
                fileSystemClasspaths.add(classpath2);
            }
        }
        if ((location = standardJavaFileManager != null ? standardJavaFileManager.getLocation(StandardLocation.CLASS_PATH) : null) != null) {
            for (File file : location) {
                classpath2 = FileSystem.getClasspath((String)file.getAbsolutePath(), null, null);
                if (classpath2 == null) continue;
                fileSystemClasspaths.add(classpath2);
            }
        }
        if (this.checkedClasspaths == null) {
            fileSystemClasspaths.addAll(this.handleBootclasspath(null, null));
            fileSystemClasspaths.addAll(this.handleClasspath(null, null));
        }
        if ((n = (fileSystemClasspaths = FileSystem.ClasspathNormalizer.normalize(fileSystemClasspaths)).size()) != 0) {
            this.checkedClasspaths = new FileSystem.Classpath[n];
            int i = 0;
            for (FileSystem.Classpath classpath2 : fileSystemClasspaths) {
                this.checkedClasspaths[i++] = classpath2;
            }
        }
    }

    protected void loggingExtraProblems() {
        super.loggingExtraProblems();
        for (final CategorizedProblem problem : this.extraProblems) {
            if (this.diagnosticListener == null) continue;
            this.diagnosticListener.report((Diagnostic<? super JavaFileObject>)new Diagnostic<JavaFileObject>(){

                @Override
                public String getCode() {
                    return null;
                }

                @Override
                public long getColumnNumber() {
                    if (problem instanceof DefaultProblem) {
                        return ((DefaultProblem)problem).column;
                    }
                    return -1L;
                }

                @Override
                public long getEndPosition() {
                    if (problem instanceof DefaultProblem) {
                        return ((DefaultProblem)problem).getSourceEnd();
                    }
                    return -1L;
                }

                @Override
                public Diagnostic.Kind getKind() {
                    if (problem.isError()) {
                        return Diagnostic.Kind.ERROR;
                    }
                    if (problem.isWarning()) {
                        return Diagnostic.Kind.WARNING;
                    }
                    return Diagnostic.Kind.OTHER;
                }

                @Override
                public long getLineNumber() {
                    if (problem instanceof DefaultProblem) {
                        return ((DefaultProblem)problem).getSourceLineNumber();
                    }
                    return -1L;
                }

                @Override
                public String getMessage(Locale locale) {
                    return problem.getMessage();
                }

                @Override
                public long getPosition() {
                    if (problem instanceof DefaultProblem) {
                        return ((DefaultProblem)problem).getSourceStart();
                    }
                    return -1L;
                }

                @Override
                public JavaFileObject getSource() {
                    if (problem instanceof DefaultProblem) {
                        File f = new File(new String(((DefaultProblem)problem).getOriginatingFileName()));
                        if (f.exists()) {
                            return new EclipseFileObject(null, f.toURI(), JavaFileObject.Kind.SOURCE, null);
                        }
                        return null;
                    }
                    return null;
                }

                @Override
                public long getStartPosition() {
                    return this.getPosition();
                }
            });
        }
    }
}

