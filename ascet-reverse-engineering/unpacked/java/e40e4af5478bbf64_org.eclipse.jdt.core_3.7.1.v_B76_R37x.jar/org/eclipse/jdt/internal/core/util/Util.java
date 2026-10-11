/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ProjectScope
 *  org.eclipse.core.resources.ResourceAttributes
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.text.edits.MalformedTreeException
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.core.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.resources.ResourceAttributes;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IFieldInfo;
import org.eclipse.jdt.core.util.IMethodInfo;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.ClassSignature;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.Member;
import org.eclipse.jdt.internal.core.MemberValuePair;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.KeyToSignature;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.SimpleDocument;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.TextEdit;

public class Util {
    private static final char ARGUMENTS_DELIMITER = '#';
    private static final String EMPTY_ARGUMENT = "   ";
    private static char[][] JAVA_LIKE_EXTENSIONS;
    private static final char[] BOOLEAN;
    private static final char[] BYTE;
    private static final char[] CHAR;
    private static final char[] DOUBLE;
    private static final char[] FLOAT;
    private static final char[] INT;
    private static final char[] LONG;
    private static final char[] SHORT;
    private static final char[] VOID;
    private static final char[] INIT;
    private static final String TASK_PRIORITIES_PROBLEM = "TASK_PRIORITIES_PB";
    private static List fgRepeatedMessages;

    static {
        BOOLEAN = "boolean".toCharArray();
        BYTE = "byte".toCharArray();
        CHAR = "char".toCharArray();
        DOUBLE = "double".toCharArray();
        FLOAT = "float".toCharArray();
        INT = "int".toCharArray();
        LONG = "long".toCharArray();
        SHORT = "short".toCharArray();
        VOID = "void".toCharArray();
        INIT = "<init>".toCharArray();
        fgRepeatedMessages = new ArrayList(5);
    }

    private Util() {
    }

    public static final String[] arrayConcat(String[] first, String second) {
        if (second == null) {
            return first;
        }
        if (first == null) {
            return new String[]{second};
        }
        int length = first.length;
        if (first.length == 0) {
            return new String[]{second};
        }
        String[] result = new String[length + 1];
        System.arraycopy(first, 0, result, 0, length);
        result[length] = second;
        return result;
    }

    private static int checkTypeSignature(String sig, int start, int end, boolean allowVoid) {
        if (start >= end) {
            return -1;
        }
        int i = start;
        char c = sig.charAt(i++);
        int nestingDepth = 0;
        while (c == '[') {
            ++nestingDepth;
            if (i >= end) {
                return -1;
            }
            c = sig.charAt(i++);
        }
        switch (c) {
            case 'B': 
            case 'C': 
            case 'D': 
            case 'F': 
            case 'I': 
            case 'J': 
            case 'S': 
            case 'Z': {
                break;
            }
            case 'V': {
                if (!allowVoid) {
                    return -1;
                }
                if (nestingDepth == 0) break;
                return -1;
            }
            case 'L': {
                int semicolon = sig.indexOf(59, i);
                if (semicolon <= i || semicolon >= end) {
                    return -1;
                }
                i = semicolon + 1;
                break;
            }
            default: {
                return -1;
            }
        }
        return i;
    }

    public static int combineHashCodes(int hashCode1, int hashCode2) {
        return hashCode1 * 17 + hashCode2;
    }

    public static int compare(byte[] a, byte[] b) {
        if (a == b) {
            return 0;
        }
        if (a == null) {
            return -1;
        }
        if (b == null) {
            return 1;
        }
        int len = Math.min(a.length, b.length);
        int i = 0;
        while (i < len) {
            int diff = a[i] - b[i];
            if (diff != 0) {
                return diff;
            }
            ++i;
        }
        if (a.length > len) {
            return 1;
        }
        if (b.length > len) {
            return -1;
        }
        return 0;
    }

    public static int compare(char[] str1, char[] str2) {
        int len1 = str1.length;
        int len2 = str2.length;
        int n = Math.min(len1, len2);
        int i = 0;
        while (n-- != 0) {
            char c2;
            char c1 = str1[i];
            if (c1 == (c2 = str2[i++])) continue;
            return c1 - c2;
        }
        return len1 - len2;
    }

    public static char[] concatCompoundNameToCharArray(String[] compoundName) {
        if (compoundName == null) {
            return null;
        }
        int length = compoundName.length;
        if (length == 0) {
            return new char[0];
        }
        int size = 0;
        int i = 0;
        while (i < length) {
            size += compoundName[i].length();
            ++i;
        }
        char[] compoundChars = new char[size + length - 1];
        int pos = 0;
        int i2 = 0;
        while (i2 < length) {
            String name = compoundName[i2];
            if (i2 > 0) {
                compoundChars[pos++] = 46;
            }
            int nameLength = name.length();
            name.getChars(0, nameLength, compoundChars, pos);
            pos += nameLength;
            ++i2;
        }
        return compoundChars;
    }

    public static String concatenateName(String name1, String name2, char separator) {
        StringBuffer buf = new StringBuffer();
        if (name1 != null && name1.length() > 0) {
            buf.append(name1);
        }
        if (name2 != null && name2.length() > 0) {
            if (buf.length() > 0) {
                buf.append(separator);
            }
            buf.append(name2);
        }
        return buf.toString();
    }

    public static final String concatWith(String[] array, char separator) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        int length = array.length;
        while (i < length) {
            buffer.append(array[i]);
            if (i < length - 1) {
                buffer.append(separator);
            }
            ++i;
        }
        return buffer.toString();
    }

    public static final String concatWith(String[] array, String name, char separator) {
        if (array == null || array.length == 0) {
            return name;
        }
        if (name == null || name.length() == 0) {
            return Util.concatWith(array, separator);
        }
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        int length = array.length;
        while (i < length) {
            buffer.append(array[i]);
            buffer.append(separator);
            ++i;
        }
        buffer.append(name);
        return buffer.toString();
    }

    public static String convertTypeSignature(char[] sig, int start, int length) {
        return new String(sig, start, length).replace('/', '.');
    }

    public static String defaultJavaExtension() {
        return ".java";
    }

    public static final String editedString(String original, TextEdit edit) {
        if (edit == null) {
            return original;
        }
        SimpleDocument document = new SimpleDocument(original);
        try {
            edit.apply((IDocument)document, 0);
            return document.get();
        }
        catch (MalformedTreeException e) {
            e.printStackTrace();
        }
        catch (BadLocationException e) {
            e.printStackTrace();
        }
        return original;
    }

    public static final boolean endsWithIgnoreCase(String str, String end) {
        int endLength;
        int strLength = str == null ? 0 : str.length();
        int n = endLength = end == null ? 0 : end.length();
        if (endLength > strLength) {
            return false;
        }
        int i = 1;
        while (i <= endLength) {
            if (ScannerHelper.toLowerCase(end.charAt(endLength - i)) != ScannerHelper.toLowerCase(str.charAt(strLength - i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean equalArrays(Object[] a, Object[] b, int len) {
        if (a == b) {
            return true;
        }
        if (a.length < len || b.length < len) {
            return false;
        }
        int i = 0;
        while (i < len) {
            if (a[i] == null ? b[i] != null : !a[i].equals(b[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean equalArraysOrNull(int[] a, int[] b) {
        if (a == b) {
            return true;
        }
        if (a == null || b == null) {
            return false;
        }
        int len = a.length;
        if (len != b.length) {
            return false;
        }
        int i = 0;
        while (i < len) {
            if (a[i] != b[i]) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean equalArraysOrNull(Object[] a, Object[] b) {
        if (a == b) {
            return true;
        }
        if (a == null || b == null) {
            return false;
        }
        int len = a.length;
        if (len != b.length) {
            return false;
        }
        int i = len - 1;
        while (i >= 0) {
            if (a[i] == null ? b[i] != null : !a[i].equals(b[i])) {
                return false;
            }
            --i;
        }
        return true;
    }

    public static boolean equalArraysOrNullSortFirst(Comparable[] a, Comparable[] b) {
        if (a == b) {
            return true;
        }
        if (a == null || b == null) {
            return false;
        }
        int len = a.length;
        if (len != b.length) {
            return false;
        }
        if (len >= 2) {
            a = Util.sortCopy(a);
            b = Util.sortCopy(b);
        }
        int i = 0;
        while (i < len) {
            if (!a[i].equals(b[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean equalArraysOrNullSortFirst(String[] a, String[] b) {
        if (a == b) {
            return true;
        }
        if (a == null || b == null) {
            return false;
        }
        int len = a.length;
        if (len != b.length) {
            return false;
        }
        if (len >= 2) {
            a = Util.sortCopy(a);
            b = Util.sortCopy(b);
        }
        int i = 0;
        while (i < len) {
            if (!a[i].equals(b[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean equalOrNull(Object a, Object b) {
        if (a == b) {
            return true;
        }
        if (a == null || b == null) {
            return false;
        }
        return a.equals(b);
    }

    public static boolean equalsIgnoreJavaLikeExtension(String fileName, String string) {
        int stringLength;
        int fileNameLength = fileName.length();
        if (fileNameLength < (stringLength = string.length())) {
            return false;
        }
        int i = 0;
        while (i < stringLength) {
            if (fileName.charAt(i) != string.charAt(i)) {
                return false;
            }
            ++i;
        }
        char[][] javaLikeExtensions = Util.getJavaLikeExtensions();
        int i2 = 0;
        int length = javaLikeExtensions.length;
        while (i2 < length) {
            block7: {
                int extensionStart = stringLength + 1;
                char[] suffix = javaLikeExtensions[i2];
                if (extensionStart + suffix.length == fileNameLength && fileName.charAt(stringLength) == '.') {
                    int j = extensionStart;
                    while (j < fileNameLength) {
                        if (fileName.charAt(j) == suffix[j - extensionStart]) {
                            ++j;
                            continue;
                        }
                        break block7;
                    }
                    return true;
                }
            }
            ++i2;
        }
        return false;
    }

    public static String extractLastName(String qualifiedName) {
        int i = qualifiedName.lastIndexOf(46);
        if (i == -1) {
            return qualifiedName;
        }
        return qualifiedName.substring(i + 1);
    }

    public static String[] extractParameterTypes(char[] sig) {
        char c;
        int count = Util.getParameterCount(sig);
        String[] result = new String[count];
        if (count == 0) {
            return result;
        }
        int i = CharOperation.indexOf('(', sig) + 1;
        count = 0;
        int len = sig.length;
        int start = i;
        while (i != len && (c = sig[i]) != ')') {
            if (c == '[') {
                ++i;
                continue;
            }
            if (c == 'L') {
                Assert.isTrue(((i = CharOperation.indexOf(';', sig, i + 1) + 1) != 0 ? 1 : 0) != 0);
                result[count++] = Util.convertTypeSignature(sig, start, i - start);
                start = i;
                continue;
            }
            result[count++] = Util.convertTypeSignature(sig, start, ++i - start);
            start = i;
        }
        return result;
    }

    public static String extractReturnType(String sig) {
        int i = sig.lastIndexOf(41);
        Assert.isTrue((i != -1 ? 1 : 0) != 0);
        return sig.substring(i + 1);
    }

    private static IFile findFirstClassFile(IFolder folder) {
        try {
            IResource[] members = folder.members();
            int i = 0;
            int max = members.length;
            while (i < max) {
                IResource member = members[i];
                if (member.getType() == 2) {
                    return Util.findFirstClassFile((IFolder)member);
                }
                if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(member.getName())) {
                    return (IFile)member;
                }
                ++i;
            }
        }
        catch (CoreException coreException) {}
        return null;
    }

    public static String findLineSeparator(char[] text) {
        int length = text.length;
        if (length > 0) {
            int nextChar = text[0];
            int i = 0;
            while (i < length) {
                int currentChar = nextChar;
                nextChar = i < length - 1 ? text[i + 1] : 32;
                switch (currentChar) {
                    case 10: {
                        return "\n";
                    }
                    case 13: {
                        return nextChar == 10 ? "\r\n" : "\r";
                    }
                }
                ++i;
            }
        }
        return null;
    }

    public static IClassFileAttribute getAttribute(IClassFileReader classFileReader, char[] attributeName) {
        IClassFileAttribute[] attributes = classFileReader.getAttributes();
        int i = 0;
        int max = attributes.length;
        while (i < max) {
            if (CharOperation.equals(attributes[i].getAttributeName(), attributeName)) {
                return attributes[i];
            }
            ++i;
        }
        return null;
    }

    public static IClassFileAttribute getAttribute(ICodeAttribute codeAttribute, char[] attributeName) {
        IClassFileAttribute[] attributes = codeAttribute.getAttributes();
        int i = 0;
        int max = attributes.length;
        while (i < max) {
            if (CharOperation.equals(attributes[i].getAttributeName(), attributeName)) {
                return attributes[i];
            }
            ++i;
        }
        return null;
    }

    public static IClassFileAttribute getAttribute(IFieldInfo fieldInfo, char[] attributeName) {
        IClassFileAttribute[] attributes = fieldInfo.getAttributes();
        int i = 0;
        int max = attributes.length;
        while (i < max) {
            if (CharOperation.equals(attributes[i].getAttributeName(), attributeName)) {
                return attributes[i];
            }
            ++i;
        }
        return null;
    }

    public static IClassFileAttribute getAttribute(IMethodInfo methodInfo, char[] attributeName) {
        IClassFileAttribute[] attributes = methodInfo.getAttributes();
        int i = 0;
        int max = attributes.length;
        while (i < max) {
            if (CharOperation.equals(attributes[i].getAttributeName(), attributeName)) {
                return attributes[i];
            }
            ++i;
        }
        return null;
    }

    private static IClassFile getClassFile(char[] fileName) {
        int jarSeparator = CharOperation.indexOf('|', fileName);
        int pkgEnd = CharOperation.lastIndexOf('/', fileName);
        if (pkgEnd == -1) {
            pkgEnd = CharOperation.lastIndexOf(File.separatorChar, fileName);
        }
        if (jarSeparator != -1 && pkgEnd < jarSeparator) {
            pkgEnd = jarSeparator;
        }
        if (pkgEnd == -1) {
            return null;
        }
        IPackageFragment pkg = Util.getPackageFragment(fileName, pkgEnd, jarSeparator);
        if (pkg == null) {
            return null;
        }
        int start = pkgEnd + 1;
        return pkg.getClassFile(new String(fileName, start, fileName.length - start));
    }

    private static ICompilationUnit getCompilationUnit(char[] fileName, WorkingCopyOwner workingCopyOwner) {
        ICompilationUnit workingCopy;
        char[] slashSeparatedFileName = CharOperation.replaceOnCopy(fileName, File.separatorChar, '/');
        int pkgEnd = CharOperation.lastIndexOf('/', slashSeparatedFileName);
        if (pkgEnd == -1) {
            return null;
        }
        IPackageFragment pkg = Util.getPackageFragment(slashSeparatedFileName, pkgEnd, -1);
        if (pkg == null) {
            return null;
        }
        int start = pkgEnd + 1;
        ICompilationUnit cu = pkg.getCompilationUnit(new String(slashSeparatedFileName, start, slashSeparatedFileName.length - start));
        if (workingCopyOwner != null && (workingCopy = cu.findWorkingCopy(workingCopyOwner)) != null) {
            return workingCopy;
        }
        return cu;
    }

    public static char[][] getJavaLikeExtensions() {
        if (JAVA_LIKE_EXTENSIONS == null) {
            IContentType javaContentType = Platform.getContentTypeManager().getContentType("org.eclipse.jdt.core.javaSource");
            HashSet<String> fileExtensions = new HashSet<String>();
            IContentType[] contentTypes = Platform.getContentTypeManager().getAllContentTypes();
            int i = 0;
            int length = contentTypes.length;
            while (i < length) {
                if (contentTypes[i].isKindOf(javaContentType)) {
                    String[] fileExtension = contentTypes[i].getFileSpecs(8);
                    int j = 0;
                    int length2 = fileExtension.length;
                    while (j < length2) {
                        fileExtensions.add(fileExtension[j]);
                        ++j;
                    }
                }
                ++i;
            }
            int length2 = fileExtensions.size();
            char[][] extensions = new char[length2][];
            extensions[0] = "java".toCharArray();
            int index = 1;
            Iterator iterator = fileExtensions.iterator();
            while (iterator.hasNext()) {
                String fileExtension = (String)iterator.next();
                if ("java".equals(fileExtension)) continue;
                extensions[index++] = fileExtension.toCharArray();
            }
            JAVA_LIKE_EXTENSIONS = extensions;
        }
        return JAVA_LIKE_EXTENSIONS;
    }

    public static long getJdkLevel(Object targetLibrary) {
        try {
            ClassFileReader reader;
            block17: {
                reader = null;
                if (targetLibrary instanceof IFolder) {
                    IFile classFile = Util.findFirstClassFile((IFolder)targetLibrary);
                    if (classFile != null) {
                        reader = Util.newClassFileReader((IResource)classFile);
                    }
                } else {
                    ZipFile jar;
                    block16: {
                        jar = null;
                        try {
                            try {
                                File f;
                                IPath path = null;
                                if (targetLibrary instanceof IResource) {
                                    path = ((IResource)targetLibrary).getFullPath();
                                } else if (targetLibrary instanceof File && !(f = (File)targetLibrary).isDirectory()) {
                                    path = new Path(((File)targetLibrary).getPath());
                                }
                                if (path == null) break block16;
                                jar = JavaModelManager.getJavaModelManager().getZipFile(path);
                                Enumeration<? extends ZipEntry> e = jar.entries();
                                while (e.hasMoreElements()) {
                                    ZipEntry member = e.nextElement();
                                    String entryName = member.getName();
                                    if (!org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(entryName)) continue;
                                    reader = ClassFileReader.read(jar, entryName);
                                    break;
                                }
                            }
                            catch (CoreException coreException) {
                                JavaModelManager.getJavaModelManager().closeZipFile(jar);
                                break block17;
                            }
                        }
                        catch (Throwable throwable) {
                            JavaModelManager.getJavaModelManager().closeZipFile(jar);
                            throw throwable;
                        }
                    }
                    JavaModelManager.getJavaModelManager().closeZipFile(jar);
                }
            }
            if (reader != null) {
                return reader.getVersion();
            }
        }
        catch (CoreException coreException) {
        }
        catch (ClassFormatException classFormatException) {
        }
        catch (IOException iOException) {}
        return 0L;
    }

    public static String getNameWithoutJavaLikeExtension(String fileName) {
        int index = Util.indexOfJavaLikeExtension(fileName);
        if (index == -1) {
            return fileName;
        }
        return fileName.substring(0, index);
    }

    public static String getLineSeparator(String text, IJavaProject project) {
        String lineSeparator = null;
        if (text != null && text.length() != 0 && (lineSeparator = Util.findLineSeparator(text.toCharArray())) != null) {
            return lineSeparator;
        }
        if (Platform.isRunning()) {
            IScopeContext[] scopeContext;
            if (project != null) {
                scopeContext = new IScopeContext[]{new ProjectScope(project.getProject())};
                lineSeparator = Platform.getPreferencesService().getString("org.eclipse.core.runtime", "line.separator", null, scopeContext);
                if (lineSeparator != null) {
                    return lineSeparator;
                }
            }
            scopeContext = new IScopeContext[]{InstanceScope.INSTANCE};
            lineSeparator = Platform.getPreferencesService().getString("org.eclipse.core.runtime", "line.separator", null, scopeContext);
            if (lineSeparator != null) {
                return lineSeparator;
            }
        }
        return org.eclipse.jdt.internal.compiler.util.Util.LINE_SEPARATOR;
    }

    private static String getLineSeparator(char[] text, char[] buffer) {
        String lineSeparator = Util.findLineSeparator(buffer);
        if (lineSeparator == null && (lineSeparator = Util.findLineSeparator(text)) == null) {
            return Util.getLineSeparator(null, null);
        }
        return lineSeparator;
    }

    private static IPackageFragment getPackageFragment(char[] fileName, int pkgEnd, int jarSeparator) {
        if (jarSeparator != -1) {
            String jarMemento = new String(fileName, 0, jarSeparator);
            PackageFragmentRoot root = (PackageFragmentRoot)JavaCore.create(jarMemento);
            if (pkgEnd == jarSeparator) {
                return root.getPackageFragment(CharOperation.NO_STRINGS);
            }
            char[] pkgName = CharOperation.subarray(fileName, jarSeparator + 1, pkgEnd);
            char[][] compoundName = CharOperation.splitOn('/', pkgName);
            return root.getPackageFragment(CharOperation.toStrings(compoundName));
        }
        Path path = new Path(new String(fileName, 0, pkgEnd));
        IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
        Object folder = path.segmentCount() == 1 ? workspaceRoot.getProject(path.lastSegment()) : workspaceRoot.getFolder((IPath)path);
        IJavaElement element = JavaCore.create((IResource)folder);
        if (element == null) {
            return null;
        }
        switch (element.getElementType()) {
            case 4: {
                return (IPackageFragment)element;
            }
            case 3: {
                return ((PackageFragmentRoot)element).getPackageFragment(CharOperation.NO_STRINGS);
            }
            case 2: {
                PackageFragmentRoot root = (PackageFragmentRoot)((IJavaProject)element).getPackageFragmentRoot((IResource)folder);
                if (root == null) {
                    return null;
                }
                return root.getPackageFragment(CharOperation.NO_STRINGS);
            }
        }
        return null;
    }

    public static int getParameterCount(char[] sig) {
        char c;
        int i = CharOperation.indexOf('(', sig) + 1;
        Assert.isTrue((i != 0 ? 1 : 0) != 0);
        int count = 0;
        int len = sig.length;
        while (i != len && (c = sig[i]) != ')') {
            if (c == '[') {
                ++i;
                continue;
            }
            if (c == 'L') {
                ++count;
                Assert.isTrue(((i = CharOperation.indexOf(';', sig, i + 1) + 1) != 0 ? 1 : 0) != 0);
                continue;
            }
            ++count;
            ++i;
        }
        return count;
    }

    public static String getProblemArgumentsForMarker(String[] arguments) {
        StringBuffer args = new StringBuffer(10);
        args.append(arguments.length);
        args.append(':');
        int j = 0;
        while (j < arguments.length) {
            if (j != 0) {
                args.append('#');
            }
            if (arguments[j].length() == 0) {
                args.append(EMPTY_ARGUMENT);
            } else {
                Util.encodeArgument(arguments[j], args);
            }
            ++j;
        }
        return args.toString();
    }

    private static void encodeArgument(String argument, StringBuffer buffer) {
        int i = 0;
        int max = argument.length();
        while (i < max) {
            char charAt = argument.charAt(i);
            switch (charAt) {
                case '#': {
                    buffer.append('#').append('#');
                    break;
                }
                default: {
                    buffer.append(charAt);
                }
            }
            ++i;
        }
    }

    public static String[] getProblemArgumentsFromMarker(String argumentsString) {
        if (argumentsString == null) {
            return null;
        }
        int index = argumentsString.indexOf(58);
        if (index == -1) {
            return null;
        }
        int length = argumentsString.length();
        int numberOfArg = 0;
        try {
            numberOfArg = Integer.parseInt(argumentsString.substring(0, index));
        }
        catch (NumberFormatException numberFormatException) {
            return null;
        }
        argumentsString = argumentsString.substring(index + 1, length);
        return Util.decodeArgumentString(numberOfArg, argumentsString);
    }

    private static String[] decodeArgumentString(int length, String argumentsString) {
        if (length == 0) {
            if (argumentsString.length() != 0) {
                return null;
            }
            return CharOperation.NO_STRINGS;
        }
        String[] result = new String[length];
        int count = 0;
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        int max = argumentsString.length();
        while (i < max) {
            char current = argumentsString.charAt(i);
            switch (current) {
                case '#': {
                    if (i + 1 == max) {
                        return null;
                    }
                    char next = argumentsString.charAt(i + 1);
                    if (next == '#') {
                        buffer.append('#');
                        ++i;
                        break;
                    }
                    String currentArgumentContents = String.valueOf(buffer);
                    if (EMPTY_ARGUMENT.equals(currentArgumentContents)) {
                        currentArgumentContents = org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING;
                    }
                    result[count++] = currentArgumentContents;
                    if (count > length) {
                        return null;
                    }
                    buffer.delete(0, buffer.length());
                    break;
                }
                default: {
                    buffer.append(current);
                }
            }
            ++i;
        }
        String currentArgumentContents = String.valueOf(buffer);
        if (EMPTY_ARGUMENT.equals(currentArgumentContents)) {
            currentArgumentContents = org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING;
        }
        result[count++] = currentArgumentContents;
        if (count > length) {
            return null;
        }
        buffer.delete(0, buffer.length());
        return result;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static byte[] getResourceContentsAsByteArray(IFile file) throws JavaModelException {
        byte[] byArray;
        InputStream stream = null;
        try {
            stream = file.getContents(true);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
        try {
            byArray = org.eclipse.jdt.internal.compiler.util.Util.getInputStreamAsByteArray(stream, -1);
        }
        catch (IOException e) {
            try {
                throw new JavaModelException(e, 985);
            }
            catch (Throwable throwable) {
                try {
                    stream.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
        }
        try {
            stream.close();
            return byArray;
        }
        catch (IOException iOException) {}
        return byArray;
    }

    public static char[] getResourceContentsAsCharArray(IFile file) throws JavaModelException {
        String encoding;
        try {
            encoding = file.getCharset();
        }
        catch (CoreException coreException) {
            encoding = null;
        }
        return Util.getResourceContentsAsCharArray(file, encoding);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static char[] getResourceContentsAsCharArray(IFile file, String encoding) throws JavaModelException {
        char[] cArray;
        long length;
        IPath location = file.getLocation();
        if (location == null) {
            try {
                URI locationURI = file.getLocationURI();
                if (locationURI == null) {
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.core", Messages.bind(Messages.file_notFound, file.getFullPath().toString())));
                }
                length = EFS.getStore((URI)locationURI).fetchInfo().getLength();
            }
            catch (CoreException e) {
                throw new JavaModelException(e, 969);
            }
        } else {
            length = location.toFile().length();
        }
        InputStream stream = null;
        try {
            stream = file.getContents(true);
        }
        catch (CoreException e) {
            throw new JavaModelException(e, 969);
        }
        try {
            cArray = org.eclipse.jdt.internal.compiler.util.Util.getInputStreamAsCharArray(stream, (int)length, encoding);
        }
        catch (IOException e) {
            try {
                throw new JavaModelException(e, 985);
            }
            catch (Throwable throwable) {
                try {
                    stream.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
        }
        try {
            stream.close();
            return cArray;
        }
        catch (IOException iOException) {}
        return cArray;
    }

    public static String getSignature(Type type) {
        StringBuffer buffer = new StringBuffer();
        Util.getFullyQualifiedName(type, buffer);
        return Signature.createTypeSignature(buffer.toString(), false);
    }

    public static String getSourceAttachmentProperty(IPath path) throws JavaModelException {
        Map rootPathToAttachments = JavaModelManager.getJavaModelManager().rootPathToAttachments;
        String property = (String)rootPathToAttachments.get(path);
        if (property == null) {
            block5: {
                try {
                    property = ResourcesPlugin.getWorkspace().getRoot().getPersistentProperty(Util.getSourceAttachmentPropertyName(path));
                    if (property != null) break block5;
                    rootPathToAttachments.put(path, "");
                    return null;
                }
                catch (CoreException e) {
                    throw new JavaModelException(e);
                }
            }
            rootPathToAttachments.put(path, property);
            return property;
        }
        if (property.equals("")) {
            return null;
        }
        return property;
    }

    private static QualifiedName getSourceAttachmentPropertyName(IPath path) {
        return new QualifiedName("org.eclipse.jdt.core", "sourceattachment: " + path.toOSString());
    }

    public static void setSourceAttachmentProperty(IPath path, String property) {
        if (property == null) {
            JavaModelManager.getJavaModelManager().rootPathToAttachments.put(path, "");
        } else {
            JavaModelManager.getJavaModelManager().rootPathToAttachments.put(path, property);
        }
        try {
            ResourcesPlugin.getWorkspace().getRoot().setPersistentProperty(Util.getSourceAttachmentPropertyName(path), property);
        }
        catch (CoreException e) {
            e.printStackTrace();
        }
    }

    public static String getDeclaringTypeSignature(String key) {
        KeyToSignature keyToSignature = new KeyToSignature(key, 2);
        keyToSignature.parse();
        return keyToSignature.signature.toString();
    }

    private static void getFullyQualifiedName(Type type, StringBuffer buffer) {
        switch (type.getNodeType()) {
            case 5: {
                ArrayType arrayType = (ArrayType)type;
                Util.getFullyQualifiedName(arrayType.getElementType(), buffer);
                int i = 0;
                int length = arrayType.getDimensions();
                while (i < length) {
                    buffer.append('[');
                    buffer.append(']');
                    ++i;
                }
                break;
            }
            case 74: {
                ParameterizedType parameterizedType = (ParameterizedType)type;
                Util.getFullyQualifiedName(parameterizedType.getType(), buffer);
                buffer.append('<');
                Iterator iterator = parameterizedType.typeArguments().iterator();
                boolean isFirst = true;
                while (iterator.hasNext()) {
                    if (!isFirst) {
                        buffer.append(',');
                    } else {
                        isFirst = false;
                    }
                    Type typeArgument = (Type)iterator.next();
                    Util.getFullyQualifiedName(typeArgument, buffer);
                }
                buffer.append('>');
                break;
            }
            case 39: {
                buffer.append(((PrimitiveType)type).getPrimitiveTypeCode().toString());
                break;
            }
            case 75: {
                buffer.append(((QualifiedType)type).getName().getFullyQualifiedName());
                break;
            }
            case 43: {
                buffer.append(((SimpleType)type).getName().getFullyQualifiedName());
                break;
            }
            case 76: {
                buffer.append('?');
                WildcardType wildcardType = (WildcardType)type;
                Type bound = wildcardType.getBound();
                if (bound == null) {
                    return;
                }
                if (wildcardType.isUpperBound()) {
                    buffer.append(" extends ");
                } else {
                    buffer.append(" super ");
                }
                Util.getFullyQualifiedName(bound, buffer);
            }
        }
    }

    public static String[] getTrimmedSimpleNames(String name) {
        String[] result = Signature.getSimpleNames(name);
        int i = 0;
        int length = result.length;
        while (i < length) {
            result[i] = result[i].trim();
            ++i;
        }
        return result;
    }

    public static JavaElement getUnresolvedJavaElement(FieldBinding binding, WorkingCopyOwner workingCopyOwner, BindingsToNodesMap bindingsToNodes) {
        if (binding.declaringClass == null) {
            return null;
        }
        JavaElement unresolvedJavaElement = Util.getUnresolvedJavaElement(binding.declaringClass, workingCopyOwner, bindingsToNodes);
        if (unresolvedJavaElement == null || unresolvedJavaElement.getElementType() != 7) {
            return null;
        }
        return (JavaElement)((Object)((IType)((Object)unresolvedJavaElement)).getField(String.valueOf(binding.name)));
    }

    public static JavaElement getUnresolvedJavaElement(int localSourceStart, int localSourceEnd, JavaElement type) {
        block6: {
            if (type instanceof IType) break block6;
            return null;
        }
        try {
            IInitializer[] initializers = ((IType)((Object)type)).getInitializers();
            int i = 0;
            while (i < initializers.length) {
                IInitializer initializer = initializers[i];
                ISourceRange sourceRange = initializer.getSourceRange();
                if (sourceRange != null) {
                    int initializerStart = sourceRange.getOffset();
                    int initializerEnd = initializerStart + sourceRange.getLength();
                    if (initializerStart <= localSourceStart && localSourceEnd <= initializerEnd) {
                        return (JavaElement)((Object)initializer);
                    }
                }
                ++i;
            }
            return null;
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    public static JavaElement getUnresolvedJavaElement(MethodBinding methodBinding, WorkingCopyOwner workingCopyOwner, BindingsToNodesMap bindingsToNodes) {
        ASTNode node;
        JavaElement unresolvedJavaElement = Util.getUnresolvedJavaElement(methodBinding.declaringClass, workingCopyOwner, bindingsToNodes);
        if (unresolvedJavaElement == null || unresolvedJavaElement.getElementType() != 7) {
            return null;
        }
        IType declaringType = (IType)((Object)unresolvedJavaElement);
        ASTNode aSTNode = node = bindingsToNodes == null ? null : bindingsToNodes.get(methodBinding);
        if (node != null && !declaringType.isBinary()) {
            String[] parameterSignatures;
            if (node instanceof AnnotationMethodDeclaration) {
                AnnotationMethodDeclaration typeMemberDeclaration = (AnnotationMethodDeclaration)node;
                return (JavaElement)((Object)declaringType.getMethod(String.valueOf(typeMemberDeclaration.selector), CharOperation.NO_STRINGS));
            }
            MethodDeclaration methodDeclaration = (MethodDeclaration)node;
            Argument[] arguments = methodDeclaration.arguments;
            if (arguments != null) {
                parameterSignatures = new String[arguments.length];
                int i = 0;
                while (i < arguments.length) {
                    Argument argument = arguments[i];
                    TypeReference typeReference = argument.type;
                    int arrayDim = typeReference.dimensions();
                    String typeSig = Signature.createTypeSignature(CharOperation.concatWith(typeReference.getTypeName(), '.'), false);
                    if (arrayDim > 0) {
                        typeSig = Signature.createArraySignature(typeSig, arrayDim);
                    }
                    parameterSignatures[i] = typeSig;
                    ++i;
                }
            } else {
                parameterSignatures = CharOperation.NO_STRINGS;
            }
            return (JavaElement)((Object)declaringType.getMethod(String.valueOf(methodDeclaration.selector), parameterSignatures));
        }
        MethodBinding original = methodBinding.original();
        String selector = original.isConstructor() ? declaringType.getElementName() : new String(original.selector);
        boolean isBinary = declaringType.isBinary();
        ReferenceBinding enclosingType = original.declaringClass.enclosingType();
        boolean isInnerBinaryTypeConstructor = isBinary && original.isConstructor() && enclosingType != null;
        TypeBinding[] parameters = original.parameters;
        int length = parameters == null ? 0 : parameters.length;
        int declaringIndex = isInnerBinaryTypeConstructor ? 1 : 0;
        String[] parameterSignatures = new String[declaringIndex + length];
        if (isInnerBinaryTypeConstructor) {
            parameterSignatures[0] = new String(enclosingType.genericTypeSignature()).replace('/', '.');
        }
        int i = 0;
        while (i < length) {
            char[] signature = parameters[i].genericTypeSignature();
            signature = isBinary ? CharOperation.replaceOnCopy(signature, '/', '.') : Util.toUnresolvedTypeSignature(signature);
            parameterSignatures[declaringIndex + i] = new String(signature);
            ++i;
        }
        IMethod result = declaringType.getMethod(selector, parameterSignatures);
        if (isBinary) {
            return (JavaElement)((Object)result);
        }
        if (result.exists()) {
            return (JavaElement)((Object)result);
        }
        IMethod[] methods = null;
        try {
            methods = declaringType.getMethods();
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
        IMethod[] candidates = Member.findMethods(result, methods);
        if (candidates == null || candidates.length == 0) {
            return null;
        }
        return (JavaElement)((Object)candidates[0]);
    }

    public static JavaElement getUnresolvedJavaElement(TypeBinding typeBinding, WorkingCopyOwner workingCopyOwner, BindingsToNodesMap bindingsToNodes) {
        if (typeBinding == null) {
            return null;
        }
        switch (typeBinding.kind()) {
            case 68: {
                typeBinding = ((ArrayBinding)typeBinding).leafComponentType();
                return Util.getUnresolvedJavaElement(typeBinding, workingCopyOwner, bindingsToNodes);
            }
            case 132: 
            case 516: 
            case 8196: {
                return null;
            }
        }
        if (typeBinding.isCapture()) {
            return null;
        }
        ReferenceBinding referenceBinding = typeBinding.isParameterizedType() || typeBinding.isRawType() ? (ReferenceBinding)typeBinding.erasure() : (ReferenceBinding)typeBinding;
        char[] fileName = referenceBinding.getFileName();
        if (referenceBinding.isLocalType() || referenceBinding.isAnonymousType()) {
            if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(fileName)) {
                int jarSeparator = CharOperation.indexOf('|', fileName);
                int pkgEnd = CharOperation.lastIndexOf('/', fileName);
                if (pkgEnd == -1) {
                    pkgEnd = CharOperation.lastIndexOf(File.separatorChar, fileName);
                }
                if (jarSeparator != -1 && pkgEnd < jarSeparator) {
                    pkgEnd = jarSeparator;
                }
                if (pkgEnd == -1) {
                    return null;
                }
                IPackageFragment pkg = Util.getPackageFragment(fileName, pkgEnd, jarSeparator);
                char[] constantPoolName = referenceBinding.constantPoolName();
                if (constantPoolName == null) {
                    ClassFile classFile = (ClassFile)Util.getClassFile(fileName);
                    return classFile == null ? null : (JavaElement)((Object)classFile.getType());
                }
                pkgEnd = CharOperation.lastIndexOf('/', constantPoolName);
                char[] classFileName = CharOperation.subarray(constantPoolName, pkgEnd + 1, constantPoolName.length);
                ClassFile classFile = (ClassFile)pkg.getClassFile(String.valueOf(new String(classFileName)) + ".class");
                return (JavaElement)((Object)classFile.getType());
            }
            ICompilationUnit cu = Util.getCompilationUnit(fileName, workingCopyOwner);
            if (cu == null) {
                return null;
            }
            try {
                int sourceStart = ((LocalTypeBinding)referenceBinding).sourceStart;
                return (JavaElement)cu.getElementAt(sourceStart);
            }
            catch (JavaModelException javaModelException) {
                return null;
            }
        }
        if (referenceBinding.isTypeVariable()) {
            String typeVariableName = new String(referenceBinding.sourceName());
            Binding declaringElement = ((TypeVariableBinding)referenceBinding).declaringElement;
            if (declaringElement instanceof MethodBinding) {
                IMethod declaringMethod = (IMethod)((Object)Util.getUnresolvedJavaElement((MethodBinding)declaringElement, workingCopyOwner, bindingsToNodes));
                return (JavaElement)((Object)declaringMethod.getTypeParameter(typeVariableName));
            }
            IType declaringType = (IType)((Object)Util.getUnresolvedJavaElement((TypeBinding)declaringElement, workingCopyOwner, bindingsToNodes));
            return (JavaElement)((Object)declaringType.getTypeParameter(typeVariableName));
        }
        if (fileName == null) {
            return null;
        }
        ReferenceBinding declaringTypeBinding = typeBinding.enclosingType();
        if (declaringTypeBinding == null) {
            if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(fileName)) {
                ClassFile classFile = (ClassFile)Util.getClassFile(fileName);
                if (classFile == null) {
                    return null;
                }
                return (JavaElement)((Object)classFile.getType());
            }
            ICompilationUnit cu = Util.getCompilationUnit(fileName, workingCopyOwner);
            if (cu == null) {
                return null;
            }
            return (JavaElement)((Object)cu.getType(new String(referenceBinding.sourceName())));
        }
        IType declaringType = (IType)((Object)Util.getUnresolvedJavaElement(declaringTypeBinding, workingCopyOwner, bindingsToNodes));
        if (declaringType == null) {
            return null;
        }
        return (JavaElement)((Object)declaringType.getType(new String(referenceBinding.sourceName())));
    }

    public static int indexOfEnclosingPath(IPath checkedPath, IPath[] paths, int pathCount) {
        int bestMatch = -1;
        int bestLength = -1;
        int i = 0;
        while (i < pathCount) {
            int currentLength;
            if (!paths[i].equals((Object)checkedPath) && paths[i].isPrefixOf(checkedPath) && (currentLength = paths[i].segmentCount()) > bestLength) {
                bestLength = currentLength;
                bestMatch = i;
            }
            ++i;
        }
        return bestMatch;
    }

    public static int indexOfJavaLikeExtension(String fileName) {
        int fileNameLength = fileName.length();
        char[][] javaLikeExtensions = Util.getJavaLikeExtensions();
        int i = 0;
        int length = javaLikeExtensions.length;
        while (i < length) {
            block4: {
                char[] extension = javaLikeExtensions[i];
                int extensionLength = extension.length;
                int extensionStart = fileNameLength - extensionLength;
                int dotIndex = extensionStart - 1;
                if (dotIndex >= 0 && fileName.charAt(dotIndex) == '.') {
                    int j = 0;
                    while (j < extensionLength) {
                        if (fileName.charAt(extensionStart + j) == extension[j]) {
                            ++j;
                            continue;
                        }
                        break block4;
                    }
                    return dotIndex;
                }
            }
            ++i;
        }
        return -1;
    }

    public static int indexOfMatchingPath(IPath checkedPath, IPath[] paths, int pathCount) {
        int i = 0;
        while (i < pathCount) {
            if (paths[i].equals((Object)checkedPath)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public static int indexOfNestedPath(IPath checkedPath, IPath[] paths, int pathCount) {
        int i = 0;
        while (i < pathCount) {
            if (!checkedPath.equals((Object)paths[i]) && checkedPath.isPrefixOf(paths[i])) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    protected static boolean isAttributeSupported(int attribute) {
        return (EFS.getLocalFileSystem().attributes() & attribute) != 0;
    }

    public static boolean isReadOnly(IResource resource) {
        if (Util.isReadOnlySupported()) {
            ResourceAttributes resourceAttributes = resource.getResourceAttributes();
            if (resourceAttributes == null) {
                return false;
            }
            return resourceAttributes.isReadOnly();
        }
        return false;
    }

    public static boolean isReadOnlySupported() {
        return Util.isAttributeSupported(2);
    }

    public static final boolean isExcluded(IJavaElement element) {
        int elementType = element.getElementType();
        switch (elementType) {
            case 1: 
            case 2: 
            case 3: {
                return false;
            }
            case 4: {
                PackageFragmentRoot root = (PackageFragmentRoot)element.getAncestor(3);
                IResource resource = ((PackageFragment)element).resource();
                return resource != null && Util.isExcluded(resource, root.fullInclusionPatternChars(), root.fullExclusionPatternChars());
            }
            case 5: {
                PackageFragmentRoot root = (PackageFragmentRoot)element.getAncestor(3);
                IResource resource = element.getResource();
                if (resource == null) {
                    return false;
                }
                if (Util.isExcluded(resource, root.fullInclusionPatternChars(), root.fullExclusionPatternChars())) {
                    return true;
                }
                return Util.isExcluded(element.getParent());
            }
        }
        IJavaElement cu = element.getAncestor(5);
        return cu != null && Util.isExcluded(cu);
    }

    public static final boolean isExcluded(IPath resourcePath, char[][] inclusionPatterns, char[][] exclusionPatterns, boolean isFolderPath) {
        if (inclusionPatterns == null && exclusionPatterns == null) {
            return false;
        }
        return org.eclipse.jdt.internal.compiler.util.Util.isExcluded(resourcePath.toString().toCharArray(), inclusionPatterns, exclusionPatterns, isFolderPath);
    }

    public static final boolean isExcluded(IResource resource, char[][] inclusionPatterns, char[][] exclusionPatterns) {
        IPath path = resource.getFullPath();
        int resourceType = resource.getType();
        return Util.isExcluded(path, inclusionPatterns, exclusionPatterns, resourceType == 2 || resourceType == 4);
    }

    public static boolean isValidClassFileName(String name, String sourceLevel, String complianceLevel) {
        return JavaConventions.validateClassFileName(name, sourceLevel, complianceLevel).getSeverity() != 4;
    }

    public static boolean isValidCompilationUnitName(String name, String sourceLevel, String complianceLevel) {
        return JavaConventions.validateCompilationUnitName(name, sourceLevel, complianceLevel).getSeverity() != 4;
    }

    public static boolean isValidFolderNameForPackage(String folderName, String sourceLevel, String complianceLevel) {
        return JavaConventions.validateIdentifier(folderName, sourceLevel, complianceLevel).getSeverity() != 4;
    }

    /*
     * Unable to fully structure code
     */
    public static boolean isValidMethodSignature(String sig) {
        len = sig.length();
        if (len == 0) {
            return false;
        }
        i = 0;
        if ((c = sig.charAt(i++)) != '(') {
            return false;
        }
        if (i < len) ** GOTO lbl13
        return false;
lbl-1000:
        // 1 sources

        {
            if ((i = Util.checkTypeSignature(sig, i, len, false)) == -1) {
                return false;
            }
            if (i < len) continue;
            return false;
lbl13:
            // 2 sources

            ** while (sig.charAt((int)i) != ')')
        }
lbl14:
        // 1 sources

        ++i;
        return (i = Util.checkTypeSignature(sig, i, len, true)) == len;
    }

    public static boolean isValidTypeSignature(String sig, boolean allowVoid) {
        int len = sig.length();
        return Util.checkTypeSignature(sig, 0, len, allowVoid) == len;
    }

    public static String localTypeName(String binaryTypeName, int lastDollar, int end) {
        if (lastDollar > 0 && binaryTypeName.charAt(lastDollar - 1) == '$') {
            return binaryTypeName;
        }
        int nameStart = lastDollar + 1;
        while (nameStart < end && Character.isDigit(binaryTypeName.charAt(nameStart))) {
            ++nameStart;
        }
        return binaryTypeName.substring(nameStart, end);
    }

    public static void log(Throwable e, String message) {
        Throwable nestedException;
        if (e instanceof JavaModelException && (nestedException = ((JavaModelException)((Object)e)).getException()) != null) {
            e = nestedException;
        }
        Util.log((IStatus)new Status(4, "org.eclipse.jdt.core", 4, message, e));
    }

    public static void logRepeatedMessage(String key, Exception e) {
        if (key == null) {
            throw new IllegalArgumentException("key cannot be null");
        }
        if (fgRepeatedMessages.contains(key)) {
            return;
        }
        fgRepeatedMessages.add(key);
        Util.log(e);
    }

    public static void logRepeatedMessage(String key, int statusErrorID, String message) {
        if (key == null) {
            throw new IllegalArgumentException("key cannot be null");
        }
        if (fgRepeatedMessages.contains(key)) {
            return;
        }
        fgRepeatedMessages.add(key);
        Util.log(statusErrorID, message);
    }

    public static void log(int statusErrorID, String message) {
        Util.log((IStatus)new Status(statusErrorID, "org.eclipse.jdt.core", message));
    }

    public static void log(IStatus status) {
        JavaCore.getPlugin().getLog().log(status);
    }

    public static void log(Throwable e) {
        Util.log((IStatus)new Status(4, "org.eclipse.jdt.core", Messages.code_assist_internal_error, e));
    }

    public static ClassFileReader newClassFileReader(IResource resource) throws CoreException, ClassFormatException, IOException {
        InputStream in = null;
        try {
            in = ((IFile)resource).getContents(true);
            ClassFileReader classFileReader = ClassFileReader.read(in, resource.getFullPath().toString());
            return classFileReader;
        }
        finally {
            if (in != null) {
                in.close();
            }
        }
    }

    public static char[] normalizeCRs(char[] text, char[] buffer) {
        CharArrayBuffer result = new CharArrayBuffer();
        int lineStart = 0;
        int length = text.length;
        if (length == 0) {
            return text;
        }
        String lineSeparator = Util.getLineSeparator(text, buffer);
        int nextChar = text[0];
        int i = 0;
        while (i < length) {
            int currentChar = nextChar;
            nextChar = i < length - 1 ? text[i + 1] : 32;
            switch (currentChar) {
                case 10: {
                    int lineLength = i - lineStart;
                    char[] line = new char[lineLength];
                    System.arraycopy(text, lineStart, line, 0, lineLength);
                    result.append(line);
                    result.append(lineSeparator);
                    lineStart = i + 1;
                    break;
                }
                case 13: {
                    char[] line;
                    int lineLength = i - lineStart;
                    if (lineLength >= 0) {
                        line = new char[lineLength];
                        System.arraycopy(text, lineStart, line, 0, lineLength);
                        result.append(line);
                        result.append(lineSeparator);
                        if (nextChar == 10) {
                            nextChar = 32;
                            lineStart = i + 2;
                            break;
                        }
                        lineStart = i + 1;
                        break;
                    }
                    lineStart = i + 1;
                }
            }
            ++i;
        }
        if (lineStart > 0) {
            int lastLineLength = length - lineStart;
            if (lastLineLength > 0) {
                char[] lastLine = new char[lastLineLength];
                System.arraycopy(text, lineStart, lastLine, 0, lastLineLength);
                result.append(lastLine);
            }
            return result.getContents();
        }
        return text;
    }

    public static String normalizeCRs(String text, String buffer) {
        return new String(Util.normalizeCRs(text.toCharArray(), buffer.toCharArray()));
    }

    public static String packageName(IPath pkgPath, String sourceLevel, String complianceLevel) {
        StringBuffer pkgName = new StringBuffer("");
        int j = 0;
        int max = pkgPath.segmentCount();
        while (j < max) {
            String segment = pkgPath.segment(j);
            if (!Util.isValidFolderNameForPackage(segment, sourceLevel, complianceLevel)) {
                return null;
            }
            pkgName.append(segment);
            if (j < pkgPath.segmentCount() - 1) {
                pkgName.append(".");
            }
            ++j;
        }
        return pkgName.toString();
    }

    public static int prefixLength(char[] s1, char[] s2) {
        int len = 0;
        int max = Math.min(s1.length, s2.length);
        int i = 0;
        while (i < max && s1[i] == s2[i]) {
            ++len;
            ++i;
        }
        return len;
    }

    public static int prefixLength(String s1, String s2) {
        int len = 0;
        int max = Math.min(s1.length(), s2.length());
        int i = 0;
        while (i < max && s1.charAt(i) == s2.charAt(i)) {
            ++len;
            ++i;
        }
        return len;
    }

    private static void quickSort(char[][] list, int left, int right) {
        int original_left = left;
        int original_right = right;
        char[] mid = list[left + (right - left) / 2];
        while (true) {
            if (Util.compare(list[left], mid) < 0) {
                ++left;
                continue;
            }
            while (Util.compare(mid, list[right]) < 0) {
                --right;
            }
            if (left <= right) {
                char[] tmp = list[left];
                list[left] = list[right];
                list[right] = tmp;
                ++left;
                --right;
            }
            if (left > right) break;
        }
        if (original_left < right) {
            Util.quickSort(list, original_left, right);
        }
        if (left < original_right) {
            Util.quickSort(list, left, original_right);
        }
    }

    private static void quickSort(Comparable[] sortedCollection, int left, int right) {
        int original_left = left;
        int original_right = right;
        Comparable mid = sortedCollection[left + (right - left) / 2];
        while (true) {
            if (sortedCollection[left].compareTo(mid) < 0) {
                ++left;
                continue;
            }
            while (mid.compareTo(sortedCollection[right]) < 0) {
                --right;
            }
            if (left <= right) {
                Comparable tmp = sortedCollection[left];
                sortedCollection[left] = sortedCollection[right];
                sortedCollection[right] = tmp;
                ++left;
                --right;
            }
            if (left > right) break;
        }
        if (original_left < right) {
            Util.quickSort(sortedCollection, original_left, right);
        }
        if (left < original_right) {
            Util.quickSort(sortedCollection, left, original_right);
        }
    }

    private static void quickSort(int[] list, int left, int right) {
        int original_left = left;
        int original_right = right;
        int mid = list[left + (right - left) / 2];
        while (true) {
            if (list[left] < mid) {
                ++left;
                continue;
            }
            while (mid < list[right]) {
                --right;
            }
            if (left <= right) {
                int tmp = list[left];
                list[left] = list[right];
                list[right] = tmp;
                ++left;
                --right;
            }
            if (left > right) break;
        }
        if (original_left < right) {
            Util.quickSort(list, original_left, right);
        }
        if (left < original_right) {
            Util.quickSort(list, left, original_right);
        }
    }

    private static void quickSort(Object[] sortedCollection, int left, int right, Comparer comparer) {
        int original_left = left;
        int original_right = right;
        Object mid = sortedCollection[left + (right - left) / 2];
        while (true) {
            if (comparer.compare(sortedCollection[left], mid) < 0) {
                ++left;
                continue;
            }
            while (comparer.compare(mid, sortedCollection[right]) < 0) {
                --right;
            }
            if (left <= right) {
                Object tmp = sortedCollection[left];
                sortedCollection[left] = sortedCollection[right];
                sortedCollection[right] = tmp;
                ++left;
                --right;
            }
            if (left > right) break;
        }
        if (original_left < right) {
            Util.quickSort(sortedCollection, original_left, right, comparer);
        }
        if (left < original_right) {
            Util.quickSort(sortedCollection, left, original_right, comparer);
        }
    }

    private static void quickSort(String[] sortedCollection, int left, int right) {
        int original_left = left;
        int original_right = right;
        String mid = sortedCollection[left + (right - left) / 2];
        while (true) {
            if (sortedCollection[left].compareTo(mid) < 0) {
                ++left;
                continue;
            }
            while (mid.compareTo(sortedCollection[right]) < 0) {
                --right;
            }
            if (left <= right) {
                String tmp = sortedCollection[left];
                sortedCollection[left] = sortedCollection[right];
                sortedCollection[right] = tmp;
                ++left;
                --right;
            }
            if (left > right) break;
        }
        if (original_left < right) {
            Util.quickSort(sortedCollection, original_left, right);
        }
        if (left < original_right) {
            Util.quickSort(sortedCollection, left, original_right);
        }
    }

    public static String relativePath(IPath fullPath, int skipSegmentCount) {
        boolean hasTrailingSeparator = fullPath.hasTrailingSeparator();
        String[] segments = fullPath.segments();
        int length = 0;
        int max = segments.length;
        if (max > skipSegmentCount) {
            int i1 = skipSegmentCount;
            while (i1 < max) {
                length += segments[i1].length();
                ++i1;
            }
            length += max - skipSegmentCount - 1;
        }
        if (hasTrailingSeparator) {
            ++length;
        }
        char[] result = new char[length];
        int offset = 0;
        int len = segments.length - 1;
        if (len >= skipSegmentCount) {
            int i = skipSegmentCount;
            while (i < len) {
                int size = segments[i].length();
                segments[i].getChars(0, size, result, offset);
                offset += size;
                result[offset++] = 47;
                ++i;
            }
            int size = segments[len].length();
            segments[len].getChars(0, size, result, offset);
            offset += size;
        }
        if (hasTrailingSeparator) {
            result[offset++] = 47;
        }
        return new String(result);
    }

    public static void resetJavaLikeExtensions() {
        JAVA_LIKE_EXTENSIONS = null;
    }

    public static int scanTypeSignature(char[] string, int start) {
        return org.eclipse.jdt.internal.compiler.util.Util.scanTypeSignature(string, start);
    }

    public static final String[] splitOn(char divider, String string, int start, int end) {
        int length;
        int n = length = string == null ? 0 : string.length();
        if (length == 0 || start > end) {
            return CharOperation.NO_STRINGS;
        }
        int wordCount = 1;
        int i = start;
        while (i < end) {
            if (string.charAt(i) == divider) {
                ++wordCount;
            }
            ++i;
        }
        String[] split = new String[wordCount];
        int last = start;
        int currentWord = 0;
        int i2 = start;
        while (i2 < end) {
            if (string.charAt(i2) == divider) {
                split[currentWord++] = string.substring(last, i2);
                last = i2 + 1;
            }
            ++i2;
        }
        split[currentWord] = string.substring(last, end);
        return split;
    }

    public static void setReadOnly(IResource resource, boolean readOnly) {
        if (Util.isReadOnlySupported()) {
            ResourceAttributes resourceAttributes = resource.getResourceAttributes();
            if (resourceAttributes == null) {
                return;
            }
            resourceAttributes.setReadOnly(readOnly);
            try {
                resource.setResourceAttributes(resourceAttributes);
            }
            catch (CoreException coreException) {}
        }
    }

    public static void sort(char[][] list) {
        if (list.length > 1) {
            Util.quickSort(list, 0, list.length - 1);
        }
    }

    public static void sort(Comparable[] objects) {
        if (objects.length > 1) {
            Util.quickSort(objects, 0, objects.length - 1);
        }
    }

    public static void sort(int[] list) {
        if (list.length > 1) {
            Util.quickSort(list, 0, list.length - 1);
        }
    }

    public static void sort(Object[] objects, Comparer comparer) {
        if (objects.length > 1) {
            Util.quickSort(objects, 0, objects.length - 1, comparer);
        }
    }

    public static void sort(String[] strings) {
        if (strings.length > 1) {
            Util.quickSort(strings, 0, strings.length - 1);
        }
    }

    public static Comparable[] sortCopy(Comparable[] objects) {
        int len = objects.length;
        Comparable[] copy = new Comparable[len];
        System.arraycopy(objects, 0, copy, 0, len);
        Util.sort(copy);
        return copy;
    }

    public static IJavaElement[] sortCopy(IJavaElement[] elements) {
        int len = elements.length;
        Object[] copy = new IJavaElement[len];
        System.arraycopy(elements, 0, copy, 0, len);
        Util.sort(copy, new Comparer(){

            public int compare(Object a, Object b) {
                return ((JavaElement)a).toStringWithAncestors().compareTo(((JavaElement)b).toStringWithAncestors());
            }
        });
        return copy;
    }

    public static Object[] sortCopy(Object[] objects, Comparer comparer) {
        int len = objects.length;
        Object[] copy = new Object[len];
        System.arraycopy(objects, 0, copy, 0, len);
        Util.sort(copy, comparer);
        return copy;
    }

    public static String[] sortCopy(String[] objects) {
        int len = objects.length;
        String[] copy = new String[len];
        System.arraycopy(objects, 0, copy, 0, len);
        Util.sort(copy);
        return copy;
    }

    public static boolean startsWithIgnoreCase(String[] compoundName, String[] prefix, boolean partialMatch) {
        int prefixLength = prefix.length;
        int nameLength = compoundName.length;
        if (prefixLength > nameLength) {
            return false;
        }
        int i = 0;
        while (i < prefixLength - 1) {
            if (!compoundName[i].equalsIgnoreCase(prefix[i])) {
                return false;
            }
            ++i;
        }
        return (partialMatch || prefixLength == nameLength) && compoundName[prefixLength - 1].toLowerCase().startsWith(prefix[prefixLength - 1].toLowerCase());
    }

    public static char[][] toCharArrays(String[] a) {
        int len = a.length;
        if (len == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[][] result = new char[len][];
        int i = 0;
        while (i < len) {
            result[i] = a[i].toCharArray();
            ++i;
        }
        return result;
    }

    public static char[][] toCompoundChars(String s) {
        int len = s.length();
        if (len == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        int segCount = 1;
        int off = s.indexOf(46);
        while (off != -1) {
            ++segCount;
            off = s.indexOf(46, off + 1);
        }
        char[][] segs = new char[segCount][];
        int start = 0;
        int i = 0;
        while (i < segCount) {
            int dot = s.indexOf(46, start);
            int end = dot == -1 ? s.length() : dot;
            segs[i] = new char[end - start];
            s.getChars(start, end, segs[i], 0);
            start = end + 1;
            ++i;
        }
        return segs;
    }

    public static File toLocalFile(URI uri, IProgressMonitor monitor) throws CoreException {
        IFileStore fileStore = EFS.getStore((URI)uri);
        File localFile = fileStore.toLocalFile(0, monitor);
        if (localFile == null) {
            localFile = fileStore.toLocalFile(4096, monitor);
        }
        return localFile;
    }

    public static String toString(char[][] c) {
        StringBuffer sb = new StringBuffer();
        int i = 0;
        int max = c.length;
        while (i < max) {
            if (i != 0) {
                sb.append('.');
            }
            sb.append(c[i]);
            ++i;
        }
        return sb.toString();
    }

    public static String toString(char[][] c, char[] d) {
        if (c == null) {
            return new String(d);
        }
        StringBuffer sb = new StringBuffer();
        int i = 0;
        int max = c.length;
        while (i < max) {
            sb.append(c[i]);
            sb.append('.');
            ++i;
        }
        sb.append(d);
        return sb.toString();
    }

    public static String[] toStrings(char[][] a) {
        int len = a.length;
        String[] result = new String[len];
        int i = 0;
        while (i < len) {
            result[i] = new String(a[i]);
            ++i;
        }
        return result;
    }

    private static char[] toUnresolvedTypeSignature(char[] signature) {
        int length = signature.length;
        if (length <= 1) {
            return signature;
        }
        StringBuffer buffer = new StringBuffer(length);
        Util.toUnresolvedTypeSignature(signature, 0, length, buffer);
        int bufferLength = buffer.length();
        char[] result = new char[bufferLength];
        buffer.getChars(0, bufferLength, result, 0);
        return result;
    }

    private static int toUnresolvedTypeSignature(char[] signature, int start, int length, StringBuffer buffer) {
        if (signature[start] == 'L') {
            buffer.append('Q');
        } else {
            buffer.append(signature[start]);
        }
        int i = start + 1;
        while (i < length) {
            char c = signature[i];
            switch (c) {
                case '$': 
                case '/': {
                    buffer.append('.');
                    break;
                }
                case '<': {
                    buffer.append('<');
                    i = Util.toUnresolvedTypeSignature(signature, i + 1, length, buffer);
                    break;
                }
                case '>': {
                    buffer.append('>');
                    return i;
                }
                default: {
                    buffer.append(c);
                }
            }
            ++i;
        }
        return length;
    }

    private static void appendArrayTypeSignature(char[] string, int start, StringBuffer buffer, boolean compact) {
        int length = string.length;
        if (start >= length - 1) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        if (c != '[') {
            throw new IllegalArgumentException();
        }
        int index = start;
        c = string[++index];
        while (c == '[') {
            if (index >= length - 1) {
                throw new IllegalArgumentException();
            }
            c = string[++index];
        }
        Util.appendTypeSignature(string, index, buffer, compact);
        int i = 0;
        int dims = index - start;
        while (i < dims) {
            buffer.append('[').append(']');
            ++i;
        }
    }

    private static void appendClassTypeSignature(char[] string, int start, StringBuffer buffer, boolean compact) {
        char c = string[start];
        if (c != 'L') {
            return;
        }
        int p = start + 1;
        int checkpoint = buffer.length();
        while (true) {
            c = string[p];
            switch (c) {
                case ';': {
                    return;
                }
                case '.': 
                case '/': {
                    if (compact) {
                        buffer.setLength(checkpoint);
                        break;
                    }
                    buffer.append('.');
                    break;
                }
                case '$': {
                    buffer.append('.');
                    break;
                }
                default: {
                    buffer.append(c);
                }
            }
            ++p;
        }
    }

    static void appendTypeSignature(char[] string, int start, StringBuffer buffer, boolean compact) {
        char c = string[start];
        switch (c) {
            case '[': {
                Util.appendArrayTypeSignature(string, start, buffer, compact);
                break;
            }
            case 'L': {
                Util.appendClassTypeSignature(string, start, buffer, compact);
                break;
            }
            case 'T': {
                int e = org.eclipse.jdt.internal.compiler.util.Util.scanTypeVariableSignature(string, start);
                buffer.append(string, start + 1, e - start - 1);
                break;
            }
            case 'Z': {
                buffer.append(BOOLEAN);
                break;
            }
            case 'B': {
                buffer.append(BYTE);
                break;
            }
            case 'C': {
                buffer.append(CHAR);
                break;
            }
            case 'D': {
                buffer.append(DOUBLE);
                break;
            }
            case 'F': {
                buffer.append(FLOAT);
                break;
            }
            case 'I': {
                buffer.append(INT);
                break;
            }
            case 'J': {
                buffer.append(LONG);
                break;
            }
            case 'S': {
                buffer.append(SHORT);
                break;
            }
            case 'V': {
                buffer.append(VOID);
            }
        }
    }

    public static String toString(char[] declaringClass, char[] methodName, char[] methodSignature, boolean includeReturnType, boolean compact) {
        boolean isConstructor = CharOperation.equals(methodName, INIT);
        int firstParen = CharOperation.indexOf('(', methodSignature);
        if (firstParen == -1) {
            return "";
        }
        StringBuffer buffer = new StringBuffer(methodSignature.length + 10);
        if (declaringClass != null && declaringClass.length > 0) {
            char[] declaringClassSignature = null;
            if (declaringClass[0] == '[') {
                CharOperation.replace(declaringClass, '/', '.');
                declaringClassSignature = Signature.toCharArray(declaringClass);
            } else {
                CharOperation.replace(declaringClass, '/', '.');
                declaringClassSignature = declaringClass;
            }
            int lastIndexOfSlash = CharOperation.lastIndexOf('.', declaringClassSignature);
            if (compact && lastIndexOfSlash != -1) {
                buffer.append(declaringClassSignature, lastIndexOfSlash + 1, declaringClassSignature.length - lastIndexOfSlash - 1);
            } else {
                buffer.append(declaringClassSignature);
            }
            if (!isConstructor) {
                buffer.append('.');
            }
        }
        if (!isConstructor && methodName != null) {
            buffer.append(methodName);
        }
        buffer.append('(');
        char[][] pts = Signature.getParameterTypes(methodSignature);
        int i = 0;
        int max = pts.length;
        while (i < max) {
            Util.appendTypeSignature(pts[i], 0, buffer, compact);
            if (i != pts.length - 1) {
                buffer.append(',');
                buffer.append(' ');
            }
            ++i;
        }
        buffer.append(')');
        if (!isConstructor) {
            buffer.append(" : ");
            if (includeReturnType) {
                char[] rts = Signature.getReturnType(methodSignature);
                Util.appendTypeSignature(rts, 0, buffer, compact);
            }
        }
        return String.valueOf(buffer);
    }

    public static String[] typeParameterSignatures(AbstractMethodDeclaration method) {
        Argument[] args = method.arguments;
        if (args != null) {
            int length = args.length;
            String[] signatures = new String[length];
            int i = 0;
            while (i < args.length) {
                Argument arg = args[i];
                signatures[i] = Util.typeSignature(arg.type);
                ++i;
            }
            return signatures;
        }
        return CharOperation.NO_STRINGS;
    }

    public static String typeSignature(TypeReference type) {
        String signature = null;
        if ((type.bits & 0x20000000) != 0) {
            UnionTypeReference unionTypeReference = (UnionTypeReference)type;
            TypeReference[] typeReferences = unionTypeReference.typeReferences;
            int length = typeReferences.length;
            String[] typeSignatures = new String[length];
            int i = 0;
            while (i < length) {
                char[][] compoundName = typeReferences[i].getParameterizedTypeName();
                char[] typeName = CharOperation.concatWith(compoundName, '.');
                typeSignatures[i] = Signature.createTypeSignature(typeName, false);
                ++i;
            }
            signature = Signature.createIntersectionTypeSignature(typeSignatures);
        } else {
            char[][] compoundName = type.getParameterizedTypeName();
            char[] typeName = CharOperation.concatWith(compoundName, '.');
            signature = Signature.createTypeSignature(typeName, false);
        }
        return signature;
    }

    public static void validateMethodSignature(String sig) {
        Assert.isTrue((boolean)Util.isValidMethodSignature(sig));
    }

    public static void validateTypeSignature(String sig, boolean allowVoid) {
        Assert.isTrue((boolean)Util.isValidTypeSignature(sig, allowVoid));
    }

    public static void verbose(String log) {
        Util.verbose(log, System.out);
    }

    public static synchronized void verbose(String log, PrintStream printStream) {
        int end;
        int start = 0;
        do {
            end = log.indexOf(10, start);
            printStream.print(Thread.currentThread());
            printStream.print(" ");
            printStream.print(log.substring(start, end == -1 ? log.length() : end + 1));
        } while ((start = end + 1) != 0);
        printStream.println();
    }

    public static final boolean isJavaLikeFileName(String name) {
        if (name == null) {
            return false;
        }
        return Util.indexOfJavaLikeExtension(name) != -1;
    }

    public static final boolean isJavaLikeFileName(char[] fileName) {
        if (fileName == null) {
            return false;
        }
        int fileNameLength = fileName.length;
        char[][] javaLikeExtensions = Util.getJavaLikeExtensions();
        int i = 0;
        int length = javaLikeExtensions.length;
        while (i < length) {
            block5: {
                char[] extension = javaLikeExtensions[i];
                int extensionLength = extension.length;
                int extensionStart = fileNameLength - extensionLength;
                if (extensionStart - 1 >= 0 && fileName[extensionStart - 1] == '.') {
                    int j = 0;
                    while (j < extensionLength) {
                        if (fileName[extensionStart + j] == extension[j]) {
                            ++j;
                            continue;
                        }
                        break block5;
                    }
                    return true;
                }
            }
            ++i;
        }
        return false;
    }

    public static final char[][][] getAllTypeArguments(char[][] typeSignatures) {
        if (typeSignatures == null) {
            return null;
        }
        int length = typeSignatures.length;
        char[][][] typeArguments = new char[length][][];
        int i = 0;
        while (i < length) {
            typeArguments[i] = Signature.getTypeArguments(typeSignatures[i]);
            ++i;
        }
        return typeArguments;
    }

    public static IAnnotation getAnnotation(JavaElement parent, IBinaryAnnotation binaryAnnotation, String memberValuePairName) {
        char[] typeName = Signature.toCharArray(CharOperation.replaceOnCopy(binaryAnnotation.getTypeName(), '/', '.'));
        return new Annotation(parent, new String(typeName), memberValuePairName);
    }

    public static Object getAnnotationMemberValue(JavaElement parent, MemberValuePair memberValuePair, Object binaryValue) {
        if (binaryValue instanceof Constant) {
            return Util.getAnnotationMemberValue(memberValuePair, (Constant)binaryValue);
        }
        if (binaryValue instanceof IBinaryAnnotation) {
            memberValuePair.valueKind = 10;
            return Util.getAnnotation(parent, (IBinaryAnnotation)binaryValue, memberValuePair.getMemberName());
        }
        if (binaryValue instanceof ClassSignature) {
            memberValuePair.valueKind = 11;
            char[] className = Signature.toCharArray(CharOperation.replaceOnCopy(((ClassSignature)binaryValue).getTypeName(), '/', '.'));
            return new String(className);
        }
        if (binaryValue instanceof EnumConstantSignature) {
            memberValuePair.valueKind = 12;
            EnumConstantSignature enumConstant = (EnumConstantSignature)binaryValue;
            char[] enumName = Signature.toCharArray(CharOperation.replaceOnCopy(enumConstant.getTypeName(), '/', '.'));
            char[] qualifiedName = CharOperation.concat(enumName, enumConstant.getEnumConstantName(), '.');
            return new String(qualifiedName);
        }
        if (binaryValue instanceof Object[]) {
            memberValuePair.valueKind = -1;
            Object[] binaryValues = (Object[])binaryValue;
            int length = binaryValues.length;
            Object[] values = new Object[length];
            int i = 0;
            while (i < length) {
                int previousValueKind = memberValuePair.valueKind;
                Object value = Util.getAnnotationMemberValue(parent, memberValuePair, binaryValues[i]);
                if (previousValueKind != -1 && memberValuePair.valueKind != previousValueKind) {
                    memberValuePair.valueKind = 14;
                }
                if (value instanceof Annotation) {
                    Annotation annotation = (Annotation)value;
                    int j = 0;
                    while (j < i) {
                        if (annotation.equals(values[j])) {
                            annotation.occurrenceCount = annotation.occurrenceCount + 1;
                        }
                        ++j;
                    }
                }
                values[i] = value;
                ++i;
            }
            if (memberValuePair.valueKind == -1) {
                memberValuePair.valueKind = 14;
            }
            return values;
        }
        memberValuePair.valueKind = 14;
        return null;
    }

    public static Object getAnnotationMemberValue(MemberValuePair memberValuePair, Constant constant) {
        if (constant == null) {
            memberValuePair.valueKind = 14;
            return null;
        }
        switch (constant.typeID()) {
            case 10: {
                memberValuePair.valueKind = 1;
                return new Integer(constant.intValue());
            }
            case 3: {
                memberValuePair.valueKind = 2;
                return new Byte(constant.byteValue());
            }
            case 4: {
                memberValuePair.valueKind = 3;
                return new Short(constant.shortValue());
            }
            case 2: {
                memberValuePair.valueKind = 4;
                return new Character(constant.charValue());
            }
            case 9: {
                memberValuePair.valueKind = 5;
                return new Float(constant.floatValue());
            }
            case 8: {
                memberValuePair.valueKind = 6;
                return new Double(constant.doubleValue());
            }
            case 5: {
                memberValuePair.valueKind = 8;
                return constant.booleanValue();
            }
            case 7: {
                memberValuePair.valueKind = 7;
                return new Long(constant.longValue());
            }
            case 11: {
                memberValuePair.valueKind = 9;
                return constant.stringValue();
            }
        }
        memberValuePair.valueKind = 14;
        return null;
    }

    public static Object getNegativeAnnotationMemberValue(MemberValuePair memberValuePair, Constant constant) {
        if (constant == null) {
            memberValuePair.valueKind = 14;
            return null;
        }
        switch (constant.typeID()) {
            case 10: {
                memberValuePair.valueKind = 1;
                return new Integer(constant.intValue() * -1);
            }
            case 9: {
                memberValuePair.valueKind = 5;
                return new Float(constant.floatValue() * -1.0f);
            }
            case 8: {
                memberValuePair.valueKind = 6;
                return new Double(constant.doubleValue() * -1.0);
            }
            case 7: {
                memberValuePair.valueKind = 7;
                return new Long(constant.longValue() * -1L);
            }
        }
        memberValuePair.valueKind = 14;
        return null;
    }

    public static final char[][] splitTypeLevelsSignature(String typeSignature) {
        char[] source = Signature.removeCapture(typeSignature.toCharArray());
        CharOperation.replace(source, '$', '.');
        char[][] signatures = new char[10][];
        int signaturesCount = 0;
        int paramOpening = 0;
        int idx = 0;
        int ln = source.length;
        while (idx < ln) {
            switch (source[idx]) {
                case '>': {
                    if (--paramOpening != 0 || signaturesCount != signatures.length) break;
                    char[][] cArrayArray = signatures;
                    signatures = new char[signaturesCount + 10][];
                    System.arraycopy(cArrayArray, 0, signatures, 0, signaturesCount);
                    break;
                }
                case '<': {
                    ++paramOpening;
                    break;
                }
                case '.': {
                    if (paramOpening != 0) break;
                    if (signaturesCount == signatures.length) {
                        char[][] cArrayArray = signatures;
                        signatures = new char[signaturesCount + 10][];
                        System.arraycopy(cArrayArray, 0, signatures, 0, signaturesCount);
                    }
                    signatures[signaturesCount] = new char[idx + 1];
                    System.arraycopy(source, 0, signatures[signaturesCount], 0, idx);
                    signatures[signaturesCount][idx] = 59;
                    ++signaturesCount;
                    break;
                }
                case '/': {
                    source[idx] = 46;
                }
            }
            ++idx;
        }
        char[][] typeSignatures = new char[signaturesCount + 1][];
        typeSignatures[0] = source;
        int i = 1;
        int j = signaturesCount - 1;
        while (i <= signaturesCount) {
            typeSignatures[i] = signatures[j];
            ++i;
            --j;
        }
        return typeSignatures;
    }

    public static String toAnchor(int startingIndex, char[] methodSignature, String methodName, boolean isVarArgs) {
        try {
            return new String(Util.toAnchor(startingIndex, methodSignature, methodName.toCharArray(), isVarArgs));
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
    }

    public static char[] toAnchor(int startingIndex, char[] methodSignature, char[] methodName, boolean isVargArgs) {
        int firstParen = CharOperation.indexOf('(', methodSignature);
        if (firstParen == -1) {
            throw new IllegalArgumentException();
        }
        StringBuffer buffer = new StringBuffer(methodSignature.length + 10);
        if (methodName != null) {
            buffer.append(methodName);
        }
        buffer.append('(');
        char[][] pts = Signature.getParameterTypes(methodSignature);
        int i = startingIndex;
        int max = pts.length;
        while (i < max) {
            if (i == max - 1) {
                Util.appendTypeSignatureForAnchor(pts[i], 0, buffer, isVargArgs);
            } else {
                Util.appendTypeSignatureForAnchor(pts[i], 0, buffer, false);
            }
            if (i != pts.length - 1) {
                buffer.append(',');
                buffer.append(' ');
            }
            ++i;
        }
        buffer.append(')');
        char[] result = new char[buffer.length()];
        buffer.getChars(0, buffer.length(), result, 0);
        return result;
    }

    private static int appendTypeSignatureForAnchor(char[] string, int start, StringBuffer buffer, boolean isVarArgs) {
        if (start >= string.length) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        if (isVarArgs) {
            switch (c) {
                case '[': {
                    return Util.appendArrayTypeSignatureForAnchor(string, start, buffer, true);
                }
            }
            throw new IllegalArgumentException();
        }
        switch (c) {
            case '[': {
                return Util.appendArrayTypeSignatureForAnchor(string, start, buffer, false);
            }
            case 'L': {
                return Util.appendClassTypeSignatureForAnchor(string, start, buffer);
            }
            case 'T': {
                int e = org.eclipse.jdt.internal.compiler.util.Util.scanTypeVariableSignature(string, start);
                buffer.append(string, start + 1, e - start - 1);
                return e;
            }
            case 'Z': {
                buffer.append(BOOLEAN);
                return start;
            }
            case 'B': {
                buffer.append(BYTE);
                return start;
            }
            case 'C': {
                buffer.append(CHAR);
                return start;
            }
            case 'D': {
                buffer.append(DOUBLE);
                return start;
            }
            case 'F': {
                buffer.append(FLOAT);
                return start;
            }
            case 'I': {
                buffer.append(INT);
                return start;
            }
            case 'J': {
                buffer.append(LONG);
                return start;
            }
            case 'S': {
                buffer.append(SHORT);
                return start;
            }
            case 'V': {
                buffer.append(VOID);
                return start;
            }
            case '!': {
                return Util.appendCaptureTypeSignatureForAnchor(string, start, buffer);
            }
            case '*': 
            case '+': 
            case '-': {
                return Util.appendTypeArgumentSignatureForAnchor(string, start, buffer);
            }
        }
        throw new IllegalArgumentException();
    }

    private static int appendTypeArgumentSignatureForAnchor(char[] string, int start, StringBuffer buffer) {
        if (start >= string.length) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        switch (c) {
            case '*': {
                return start;
            }
            case '+': {
                return Util.appendTypeSignatureForAnchor(string, start + 1, buffer, false);
            }
            case '-': {
                return Util.appendTypeSignatureForAnchor(string, start + 1, buffer, false);
            }
        }
        return Util.appendTypeSignatureForAnchor(string, start, buffer, false);
    }

    private static int appendCaptureTypeSignatureForAnchor(char[] string, int start, StringBuffer buffer) {
        if (start >= string.length - 1) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        if (c != '!') {
            throw new IllegalArgumentException();
        }
        return Util.appendTypeArgumentSignatureForAnchor(string, start + 1, buffer);
    }

    private static int appendArrayTypeSignatureForAnchor(char[] string, int start, StringBuffer buffer, boolean isVarArgs) {
        int length = string.length;
        if (start >= length - 1) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        if (c != '[') {
            throw new IllegalArgumentException();
        }
        int index = start;
        c = string[++index];
        while (c == '[') {
            if (index >= length - 1) {
                throw new IllegalArgumentException();
            }
            c = string[++index];
        }
        int e = Util.appendTypeSignatureForAnchor(string, index, buffer, false);
        int i = 1;
        int dims = index - start;
        while (i < dims) {
            buffer.append('[').append(']');
            ++i;
        }
        if (isVarArgs) {
            buffer.append('.').append('.').append('.');
        } else {
            buffer.append('[').append(']');
        }
        return e;
    }

    private static int appendClassTypeSignatureForAnchor(char[] string, int start, StringBuffer buffer) {
        if (start >= string.length - 2) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        if (c != 'L' && c != 'Q') {
            throw new IllegalArgumentException();
        }
        int p = start + 1;
        while (true) {
            if (p >= string.length) {
                throw new IllegalArgumentException();
            }
            c = string[p];
            switch (c) {
                case ';': {
                    return p;
                }
                case '<': {
                    int e;
                    p = e = Util.scanGenericEnd(string, p + 1);
                    break;
                }
                case '.': {
                    buffer.append('.');
                    break;
                }
                case '/': {
                    buffer.append('/');
                    break;
                }
                case '$': {
                    buffer.append('.');
                    break;
                }
                default: {
                    buffer.append(c);
                }
            }
            ++p;
        }
    }

    private static int scanGenericEnd(char[] string, int start) {
        if (string[start] == '>') {
            return start;
        }
        int length = string.length;
        int balance = 1;
        ++start;
        while (start <= length) {
            switch (string[start]) {
                case '>': {
                    if (--balance != 0) break;
                    return start;
                }
                case '<': {
                    ++balance;
                }
            }
            ++start;
        }
        return start;
    }

    public static void fixTaskTags(Map defaultOptionsMap) {
        Object taskTagsValue = defaultOptionsMap.get("org.eclipse.jdt.core.compiler.taskTags");
        Object taskTags = null;
        if (taskTagsValue instanceof String) {
            taskTags = CharOperation.splitAndTrimOn(',', ((String)taskTagsValue).toCharArray());
        }
        Object taskPrioritiesValue = defaultOptionsMap.get("org.eclipse.jdt.core.compiler.taskPriorities");
        Object taskPriorities = null;
        if (taskPrioritiesValue instanceof String) {
            taskPriorities = CharOperation.splitAndTrimOn(',', ((String)taskPrioritiesValue).toCharArray());
        }
        if (taskPriorities == null) {
            if (taskTags != null) {
                Util.logRepeatedMessage(TASK_PRIORITIES_PROBLEM, 4, "Inconsistent values for taskTags (not null) and task priorities (null)");
                defaultOptionsMap.remove("org.eclipse.jdt.core.compiler.taskTags");
            }
            return;
        }
        if (taskTags == null) {
            Util.logRepeatedMessage(TASK_PRIORITIES_PROBLEM, 4, "Inconsistent values for taskTags (null) and task priorities (not null)");
            defaultOptionsMap.remove("org.eclipse.jdt.core.compiler.taskPriorities");
            return;
        }
        int taskTagsLength = ((char[][])taskTags).length;
        int taskPrioritiesLength = ((char[][])taskPriorities).length;
        if (taskTagsLength != taskPrioritiesLength) {
            Util.logRepeatedMessage(TASK_PRIORITIES_PROBLEM, 4, "Inconsistent values for taskTags and task priorities : length is different");
            if (taskTagsLength > taskPrioritiesLength) {
                char[][] cArray = taskTags;
                char[][] cArrayArray = new char[taskPrioritiesLength][];
                taskTags = cArrayArray;
                System.arraycopy(cArray, 0, cArrayArray, 0, taskPrioritiesLength);
                defaultOptionsMap.put("org.eclipse.jdt.core.compiler.taskTags", new String(CharOperation.concatWith(taskTags, ',')));
            } else {
                char[][] cArray = taskPriorities;
                char[][] cArrayArray = new char[taskTagsLength][];
                taskPriorities = cArrayArray;
                System.arraycopy(cArray, 0, cArrayArray, 0, taskTagsLength);
                defaultOptionsMap.put("org.eclipse.jdt.core.compiler.taskPriorities", new String(CharOperation.concatWith(taskPriorities, ',')));
            }
        }
    }

    public static IMethod findMethod(IType type, char[] selector, String[] paramTypeSignatures, boolean isConstructor) throws JavaModelException {
        String[] args;
        IMethod method = null;
        int startingIndex = 0;
        IType enclosingType = type.getDeclaringType();
        if (enclosingType != null && isConstructor && !Flags.isStatic(type.getFlags())) {
            args = new String[paramTypeSignatures.length + 1];
            startingIndex = 1;
            args[0] = Signature.createTypeSignature(enclosingType.getFullyQualifiedName(), true);
        } else {
            args = new String[paramTypeSignatures.length];
        }
        int length = args.length;
        int i = startingIndex;
        while (i < length) {
            args[i] = new String(paramTypeSignatures[i - startingIndex]);
            ++i;
        }
        method = type.getMethod(new String(selector), args);
        IMethod[] methods = type.findMethods(method);
        if (methods != null && methods.length > 0) {
            method = methods[0];
        }
        return method;
    }

    public static interface BindingsToNodesMap {
        public ASTNode get(Binding var1);
    }

    public static interface Comparable {
        public int compareTo(Comparable var1);
    }

    public static interface Comparer {
        public int compare(Object var1, Object var2);
    }
}

