/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.core;

import java.util.StringTokenizer;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.util.Messages;

public final class JavaConventions {
    private static final char DOT = '.';
    private static final String PACKAGE_INFO = new String(TypeConstants.PACKAGE_INFO_NAME);
    private static final Scanner SCANNER = new Scanner(false, true, false, 0x2F0000L, null, null, true);

    private JavaConventions() {
    }

    public static boolean isOverlappingRoots(IPath rootPath1, IPath rootPath2) {
        if (rootPath1 == null || rootPath2 == null) {
            return false;
        }
        return rootPath1.isPrefixOf(rootPath2) || rootPath2.isPrefixOf(rootPath1);
    }

    private static synchronized char[] scannedIdentifier(String id, String sourceLevel, String complianceLevel) {
        block7: {
            if (id == null) {
                return null;
            }
            JavaConventions.SCANNER.sourceLevel = sourceLevel == null ? 0x2F0000L : CompilerOptions.versionToJdkLevel(sourceLevel);
            JavaConventions.SCANNER.complianceLevel = complianceLevel == null ? 0x2F0000L : CompilerOptions.versionToJdkLevel(complianceLevel);
            try {
                SCANNER.setSource(id.toCharArray());
                int token = SCANNER.scanIdentifier();
                if (token == 26) break block7;
                return null;
            }
            catch (InvalidInputException invalidInputException) {
                return null;
            }
        }
        if (JavaConventions.SCANNER.currentPosition == JavaConventions.SCANNER.eofPosition) {
            try {
                return SCANNER.getCurrentIdentifierSource();
            }
            catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
                return null;
            }
        }
        return null;
    }

    public static IStatus validateCompilationUnitName(String name) {
        return JavaConventions.validateCompilationUnitName(name, "1.3", "1.3");
    }

    public static IStatus validateCompilationUnitName(String name, String sourceLevel, String complianceLevel) {
        IStatus status;
        if (name == null) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_unit_nullName, null);
        }
        if (!org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(name)) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_unit_notJavaName, null);
        }
        int index = name.lastIndexOf(46);
        if (index == -1) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_unit_notJavaName, null);
        }
        String identifier = name.substring(0, index);
        if (!identifier.equals(PACKAGE_INFO) && !(status = JavaConventions.validateIdentifier(identifier, sourceLevel, complianceLevel)).isOK()) {
            return status;
        }
        status = ResourcesPlugin.getWorkspace().validateName(name, 1);
        if (!status.isOK()) {
            return status;
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public static IStatus validateClassFileName(String name) {
        return JavaConventions.validateClassFileName(name, "1.3", "1.3");
    }

    public static IStatus validateClassFileName(String name, String sourceLevel, String complianceLevel) {
        IStatus status;
        if (name == null) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_classFile_nullName, null);
        }
        if (!Util.isClassFileName(name)) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_classFile_notClassFileName, null);
        }
        int index = name.lastIndexOf(46);
        if (index == -1) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_classFile_notClassFileName, null);
        }
        String identifier = name.substring(0, index);
        if (!identifier.equals(PACKAGE_INFO) && !(status = JavaConventions.validateIdentifier(identifier, sourceLevel, complianceLevel)).isOK()) {
            return status;
        }
        status = ResourcesPlugin.getWorkspace().validateName(name, 1);
        if (!status.isOK()) {
            return status;
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public static IStatus validateFieldName(String name) {
        return JavaConventions.validateIdentifier(name, "1.3", "1.3");
    }

    public static IStatus validateFieldName(String name, String sourceLevel, String complianceLevel) {
        return JavaConventions.validateIdentifier(name, sourceLevel, complianceLevel);
    }

    public static IStatus validateIdentifier(String id) {
        return JavaConventions.validateIdentifier(id, "1.3", "1.3");
    }

    public static IStatus validateIdentifier(String id, String sourceLevel, String complianceLevel) {
        if (JavaConventions.scannedIdentifier(id, sourceLevel, complianceLevel) != null) {
            return JavaModelStatus.VERIFIED_OK;
        }
        return new Status(4, "org.eclipse.jdt.core", -1, Messages.bind(Messages.convention_illegalIdentifier, id), null);
    }

    public static IStatus validateImportDeclaration(String name) {
        return JavaConventions.validateImportDeclaration(name, "1.3", "1.3");
    }

    public static IStatus validateImportDeclaration(String name, String sourceLevel, String complianceLevel) {
        if (name == null || name.length() == 0) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_import_nullImport, null);
        }
        if (name.charAt(name.length() - 1) == '*') {
            if (name.charAt(name.length() - 2) == '.') {
                return JavaConventions.validatePackageName(name.substring(0, name.length() - 2), sourceLevel, complianceLevel);
            }
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_import_unqualifiedImport, null);
        }
        return JavaConventions.validatePackageName(name, sourceLevel, complianceLevel);
    }

    public static IStatus validateJavaTypeName(String name) {
        return JavaConventions.validateJavaTypeName(name, "1.3", "1.3");
    }

    public static IStatus validateJavaTypeName(String name, String sourceLevel, String complianceLevel) {
        char[] scannedID;
        if (name == null) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_type_nullName, null);
        }
        String trimmed = name.trim();
        if (!name.equals(trimmed)) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_type_nameWithBlanks, null);
        }
        int index = name.lastIndexOf(46);
        if (index == -1) {
            scannedID = JavaConventions.scannedIdentifier(name, sourceLevel, complianceLevel);
        } else {
            String pkg = name.substring(0, index).trim();
            IStatus status = JavaConventions.validatePackageName(pkg, sourceLevel, complianceLevel);
            if (!status.isOK()) {
                return status;
            }
            String type = name.substring(index + 1).trim();
            scannedID = JavaConventions.scannedIdentifier(type, sourceLevel, complianceLevel);
        }
        if (scannedID != null) {
            IStatus status = ResourcesPlugin.getWorkspace().validateName(new String(scannedID), 1);
            if (!status.isOK()) {
                return status;
            }
            if (CharOperation.contains('$', scannedID)) {
                return new Status(2, "org.eclipse.jdt.core", -1, Messages.convention_type_dollarName, null);
            }
            if (scannedID.length > 0 && ScannerHelper.isLowerCase(scannedID[0])) {
                return new Status(2, "org.eclipse.jdt.core", -1, Messages.convention_type_lowercaseName, null);
            }
            return JavaModelStatus.VERIFIED_OK;
        }
        return new Status(4, "org.eclipse.jdt.core", -1, Messages.bind(Messages.convention_type_invalidName, name), null);
    }

    public static IStatus validateMethodName(String name) {
        return JavaConventions.validateMethodName(name, "1.3", "1.3");
    }

    public static IStatus validateMethodName(String name, String sourceLevel, String complianceLevel) {
        return JavaConventions.validateIdentifier(name, sourceLevel, complianceLevel);
    }

    public static IStatus validatePackageName(String name) {
        return JavaConventions.validatePackageName(name, "1.3", "1.3");
    }

    public static IStatus validatePackageName(String name, String sourceLevel, String complianceLevel) {
        if (name == null) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_package_nullName, null);
        }
        int length = name.length();
        if (length == 0) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_package_emptyName, null);
        }
        if (name.charAt(0) == '.' || name.charAt(length - 1) == '.') {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_package_dotName, null);
        }
        if (CharOperation.isWhitespace(name.charAt(0)) || CharOperation.isWhitespace(name.charAt(name.length() - 1))) {
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_package_nameWithBlanks, null);
        }
        int dot = 0;
        while (dot != -1 && dot < length - 1) {
            if ((dot = name.indexOf(46, dot + 1)) == -1 || dot >= length - 1 || name.charAt(dot + 1) != '.') continue;
            return new Status(4, "org.eclipse.jdt.core", -1, Messages.convention_package_consecutiveDotsName, null);
        }
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        StringTokenizer st = new StringTokenizer(name, ".");
        boolean firstToken = true;
        Status warningStatus = null;
        while (st.hasMoreTokens()) {
            String typeName = st.nextToken();
            char[] scannedID = JavaConventions.scannedIdentifier(typeName = typeName.trim(), sourceLevel, complianceLevel);
            if (scannedID == null) {
                return new Status(4, "org.eclipse.jdt.core", -1, Messages.bind(Messages.convention_illegalIdentifier, typeName), null);
            }
            IStatus status = workspace.validateName(new String(scannedID), 2);
            if (!status.isOK()) {
                return status;
            }
            if (firstToken && scannedID.length > 0 && ScannerHelper.isUpperCase(scannedID[0]) && warningStatus == null) {
                warningStatus = new Status(2, "org.eclipse.jdt.core", -1, Messages.convention_package_uppercaseName, null);
            }
            firstToken = false;
        }
        if (warningStatus != null) {
            return warningStatus;
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public static IJavaModelStatus validateClasspath(IJavaProject javaProject, IClasspathEntry[] rawClasspath, IPath projectOutputLocation) {
        return ClasspathEntry.validateClasspath(javaProject, rawClasspath, projectOutputLocation);
    }

    public static IJavaModelStatus validateClasspathEntry(IJavaProject project, IClasspathEntry entry, boolean checkSourceAttachment) {
        return ClasspathEntry.validateClasspathEntry(project, entry, checkSourceAttachment, false);
    }

    public static IStatus validateTypeVariableName(String name) {
        return JavaConventions.validateIdentifier(name, "1.3", "1.3");
    }

    public static IStatus validateTypeVariableName(String name, String sourceLevel, String complianceLevel) {
        return JavaConventions.validateIdentifier(name, sourceLevel, complianceLevel);
    }
}

