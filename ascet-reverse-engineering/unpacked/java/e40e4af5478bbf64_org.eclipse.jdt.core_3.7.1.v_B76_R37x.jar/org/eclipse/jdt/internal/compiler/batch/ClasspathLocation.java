/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public abstract class ClasspathLocation
implements FileSystem.Classpath,
SuffixConstants {
    public static final int SOURCE = 1;
    public static final int BINARY = 2;
    String path;
    char[] normalizedPath;
    public AccessRuleSet accessRuleSet;
    public String destinationPath;

    protected ClasspathLocation(AccessRuleSet accessRuleSet, String destinationPath) {
        this.accessRuleSet = accessRuleSet;
        this.destinationPath = destinationPath;
    }

    protected AccessRestriction fetchAccessRestriction(String qualifiedBinaryFileName) {
        if (this.accessRuleSet == null) {
            return null;
        }
        char[] qualifiedTypeName = qualifiedBinaryFileName.substring(0, qualifiedBinaryFileName.length() - SUFFIX_CLASS.length).toCharArray();
        if (File.separatorChar == '\\') {
            CharOperation.replace(qualifiedTypeName, File.separatorChar, '/');
        }
        return this.accessRuleSet.getViolatedRestriction(qualifiedTypeName);
    }

    public int getMode() {
        return 3;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + this.getMode();
        result = 31 * result + (this.path == null ? 0 : this.path.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        ClasspathLocation other = (ClasspathLocation)obj;
        String localPath = this.getPath();
        String otherPath = other.getPath();
        if (localPath == null ? otherPath != null : !localPath.equals(otherPath)) {
            return false;
        }
        return this.getMode() == other.getMode();
    }

    public String getPath() {
        return this.path;
    }
}

