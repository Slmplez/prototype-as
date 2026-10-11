/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Plugin
 */
package org.eclipse.jdt.core;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICodeFormatter;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.compiler.IScanner;
import org.eclipse.jdt.core.formatter.CodeFormatter;
import org.eclipse.jdt.core.util.ClassFileBytesDisassembler;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IClassFileDisassembler;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.util.ClassFileReader;
import org.eclipse.jdt.internal.core.util.Disassembler;
import org.eclipse.jdt.internal.core.util.PublicScanner;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatter;

public class ToolFactory {
    public static final int M_FORMAT_NEW = new Integer(0);
    public static final int M_FORMAT_EXISTING = new Integer(1);

    public static ICodeFormatter createCodeFormatter() {
        Plugin jdtCorePlugin = JavaCore.getPlugin();
        if (jdtCorePlugin == null) {
            return null;
        }
        IExtensionPoint extension = jdtCorePlugin.getDescriptor().getExtensionPoint("codeFormatter");
        if (extension != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    try {
                        Object execExt = configElements[j].createExecutableExtension("class");
                        if (execExt instanceof ICodeFormatter) {
                            return (ICodeFormatter)execExt;
                        }
                    }
                    catch (CoreException coreException) {}
                    ++j;
                }
                ++i;
            }
        }
        return ToolFactory.createDefaultCodeFormatter(null);
    }

    public static CodeFormatter createCodeFormatter(Map options) {
        return ToolFactory.createCodeFormatter(options, M_FORMAT_NEW);
    }

    public static CodeFormatter createCodeFormatter(Map options, int mode) {
        if (options == null) {
            options = JavaCore.getOptions();
        }
        HashMap<String, String> currentOptions = new HashMap<String, String>(options);
        if (mode == M_FORMAT_NEW) {
            currentOptions.put("org.eclipse.jdt.core.formatter.format_line_comment_starting_on_first_column", "true");
            currentOptions.put("org.eclipse.jdt.core.formatter.never_indent_block_comments_on_first_column", "false");
            currentOptions.put("org.eclipse.jdt.core.formatter.never_indent_line_comments_on_first_column", "false");
        }
        return new DefaultCodeFormatter(currentOptions);
    }

    public static ClassFileBytesDisassembler createDefaultClassFileBytesDisassembler() {
        return new Disassembler();
    }

    public static IClassFileDisassembler createDefaultClassFileDisassembler() {
        class DeprecatedDisassembler
        extends Disassembler
        implements IClassFileDisassembler {
            DeprecatedDisassembler() {
            }
        }
        return new DeprecatedDisassembler();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static IClassFileReader createDefaultClassFileReader(IClassFile classfile, int decodingFlag) {
        IPackageFragmentRoot root = (IPackageFragmentRoot)classfile.getAncestor(3);
        if (root == null) return null;
        try {
            IClassFileReader iClassFileReader;
            if (root instanceof JarPackageFragmentRoot) {
                String archiveName = null;
                ZipFile jar = null;
                try {
                    jar = ((JarPackageFragmentRoot)root).getJar();
                    archiveName = jar.getName();
                }
                finally {
                    JavaModelManager.getJavaModelManager().closeZipFile(jar);
                }
                PackageFragment packageFragment = (PackageFragment)classfile.getParent();
                String classFileName = classfile.getElementName();
                String entryName = org.eclipse.jdt.internal.core.util.Util.concatWith(packageFragment.names, classFileName, '/');
                return ToolFactory.createDefaultClassFileReader(archiveName, entryName, decodingFlag);
            }
            InputStream in = null;
            try {
                in = ((IFile)((JavaElement)((Object)classfile)).resource()).getContents();
                iClassFileReader = ToolFactory.createDefaultClassFileReader(in, decodingFlag);
                if (in == null) return iClassFileReader;
            }
            catch (Throwable throwable) {
                if (in == null) throw throwable;
                try {
                    in.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                in.close();
                return iClassFileReader;
            }
            catch (IOException iOException) {}
            return iClassFileReader;
        }
        catch (CoreException coreException) {}
        return null;
    }

    public static IClassFileReader createDefaultClassFileReader(InputStream stream, int decodingFlag) {
        try {
            return new ClassFileReader(Util.getInputStreamAsByteArray(stream, -1), decodingFlag);
        }
        catch (ClassFormatException classFormatException) {
            return null;
        }
        catch (IOException iOException) {
            return null;
        }
    }

    public static IClassFileReader createDefaultClassFileReader(String fileName, int decodingFlag) {
        try {
            return new ClassFileReader(Util.getFileByteContent(new File(fileName)), decodingFlag);
        }
        catch (ClassFormatException classFormatException) {
            return null;
        }
        catch (IOException iOException) {
            return null;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static IClassFileReader createDefaultClassFileReader(String zipFileName, String zipEntryName, int decodingFlag) {
        ZipEntry zipEntry;
        ZipFile zipFile = null;
        if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
            System.out.println("(" + Thread.currentThread() + ") [ToolFactory.createDefaultClassFileReader()] Creating ZipFile on " + zipFileName);
        }
        if ((zipEntry = (zipFile = new ZipFile(zipFileName)).getEntry(zipEntryName)) == null || !zipEntryName.toLowerCase().endsWith(".class")) {
            if (zipFile == null) return null;
            try {
                zipFile.close();
                return null;
            }
            catch (IOException iOException) {}
            return null;
        }
        byte[] classFileBytes = Util.getZipEntryByteContent(zipEntry, zipFile);
        ClassFileReader classFileReader = new ClassFileReader(classFileBytes, decodingFlag);
        if (zipFile == null) return classFileReader;
        try {
            zipFile.close();
            return classFileReader;
        }
        catch (IOException iOException) {}
        return classFileReader;
        catch (ClassFormatException classFormatException) {
            if (zipFile == null) return null;
            {
                catch (Throwable throwable) {
                    if (zipFile == null) throw throwable;
                    try {
                        zipFile.close();
                        throw throwable;
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
            }
            try {
                zipFile.close();
                return null;
            }
            catch (IOException iOException) {}
            return null;
            catch (IOException iOException) {
                if (zipFile == null) return null;
                try {
                    zipFile.close();
                    return null;
                }
                catch (IOException iOException2) {}
                return null;
            }
        }
    }

    public static ICodeFormatter createDefaultCodeFormatter(Map options) {
        if (options == null) {
            options = JavaCore.getOptions();
        }
        return new org.eclipse.jdt.internal.formatter.old.CodeFormatter(options);
    }

    public static IScanner createScanner(boolean tokenizeComments, boolean tokenizeWhiteSpace, boolean assertMode, boolean recordLineSeparator) {
        long complianceLevelValue = CompilerOptions.versionToJdkLevel(JavaCore.getOption("org.eclipse.jdt.core.compiler.compliance"));
        if (complianceLevelValue == 0L) {
            complianceLevelValue = 0x300000L;
        }
        PublicScanner scanner = new PublicScanner(tokenizeComments, tokenizeWhiteSpace, false, assertMode ? 0x300000L : 0x2F0000L, complianceLevelValue, null, null, true);
        scanner.recordLineSeparator = recordLineSeparator;
        return scanner;
    }

    public static IScanner createScanner(boolean tokenizeComments, boolean tokenizeWhiteSpace, boolean recordLineSeparator, String sourceLevel) {
        long sourceLevelValue;
        long complianceLevelValue = CompilerOptions.versionToJdkLevel(JavaCore.getOption("org.eclipse.jdt.core.compiler.compliance"));
        if (complianceLevelValue == 0L) {
            complianceLevelValue = 0x300000L;
        }
        if ((sourceLevelValue = CompilerOptions.versionToJdkLevel(sourceLevel)) == 0L) {
            sourceLevelValue = 0x2F0000L;
        }
        PublicScanner scanner = new PublicScanner(tokenizeComments, tokenizeWhiteSpace, false, sourceLevelValue, complianceLevelValue, null, null, true);
        scanner.recordLineSeparator = recordLineSeparator;
        return scanner;
    }

    public static IScanner createScanner(boolean tokenizeComments, boolean tokenizeWhiteSpace, boolean recordLineSeparator, String sourceLevel, String complianceLevel) {
        long complianceLevelValue;
        PublicScanner scanner = null;
        long sourceLevelValue = CompilerOptions.versionToJdkLevel(sourceLevel);
        if (sourceLevelValue == 0L) {
            sourceLevelValue = 0x2F0000L;
        }
        if ((complianceLevelValue = CompilerOptions.versionToJdkLevel(complianceLevel)) == 0L) {
            complianceLevelValue = 0x300000L;
        }
        scanner = new PublicScanner(tokenizeComments, tokenizeWhiteSpace, false, sourceLevelValue, complianceLevelValue, null, null, true);
        scanner.recordLineSeparator = recordLineSeparator;
        return scanner;
    }
}

