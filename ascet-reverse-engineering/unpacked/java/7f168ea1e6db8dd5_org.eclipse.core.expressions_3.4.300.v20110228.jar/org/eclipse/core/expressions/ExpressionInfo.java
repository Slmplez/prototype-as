/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.expressions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ExpressionInfo {
    private boolean fHasDefaultVariableAccess;
    private boolean fHasSystemPropertyAccess;
    private List fAccessedVariableNames;
    private List fMisbehavingExpressionTypes;
    private List fAccessedPropertyNames;

    public boolean hasDefaultVariableAccess() {
        return this.fHasDefaultVariableAccess;
    }

    public void markDefaultVariableAccessed() {
        this.fHasDefaultVariableAccess = true;
    }

    public boolean hasSystemPropertyAccess() {
        return this.fHasSystemPropertyAccess;
    }

    public void markSystemPropertyAccessed() {
        this.fHasSystemPropertyAccess = true;
    }

    public String[] getAccessedVariableNames() {
        if (this.fAccessedVariableNames == null) {
            return new String[0];
        }
        return this.fAccessedVariableNames.toArray(new String[this.fAccessedVariableNames.size()]);
    }

    public void addVariableNameAccess(String name) {
        if (this.fAccessedVariableNames == null) {
            this.fAccessedVariableNames = new ArrayList(5);
            this.fAccessedVariableNames.add(name);
        } else if (!this.fAccessedVariableNames.contains(name)) {
            this.fAccessedVariableNames.add(name);
        }
    }

    public String[] getAccessedPropertyNames() {
        if (this.fAccessedPropertyNames == null) {
            return new String[0];
        }
        return this.fAccessedPropertyNames.toArray(new String[this.fAccessedPropertyNames.size()]);
    }

    public void addAccessedPropertyName(String name) {
        if (this.fAccessedPropertyNames == null) {
            this.fAccessedPropertyNames = new ArrayList(5);
            this.fAccessedPropertyNames.add(name);
        } else if (!this.fAccessedPropertyNames.contains(name)) {
            this.fAccessedPropertyNames.add(name);
        }
    }

    public Class[] getMisbehavingExpressionTypes() {
        if (this.fMisbehavingExpressionTypes == null) {
            return null;
        }
        return this.fMisbehavingExpressionTypes.toArray(new Class[this.fMisbehavingExpressionTypes.size()]);
    }

    public void addMisBehavingExpressionType(Class clazz) {
        if (this.fMisbehavingExpressionTypes == null) {
            this.fMisbehavingExpressionTypes = new ArrayList(2);
            this.fMisbehavingExpressionTypes.add(clazz);
        } else if (!this.fMisbehavingExpressionTypes.contains(clazz)) {
            this.fMisbehavingExpressionTypes.add(clazz);
        }
    }

    public void merge(ExpressionInfo other) {
        this.mergeDefaultVariableAccess(other);
        this.mergeSystemPropertyAccess(other);
        this.mergeAccessedVariableNames(other);
        this.mergeAccessedPropertyNames(other);
        this.mergeMisbehavingExpressionTypes(other);
    }

    public void mergeExceptDefaultVariable(ExpressionInfo other) {
        this.mergeSystemPropertyAccess(other);
        this.mergeAccessedVariableNames(other);
        this.mergeAccessedPropertyNames(other);
        this.mergeMisbehavingExpressionTypes(other);
    }

    private void mergeDefaultVariableAccess(ExpressionInfo other) {
        this.fHasDefaultVariableAccess = this.fHasDefaultVariableAccess || other.fHasDefaultVariableAccess;
    }

    private void mergeSystemPropertyAccess(ExpressionInfo other) {
        this.fHasSystemPropertyAccess = this.fHasSystemPropertyAccess || other.fHasSystemPropertyAccess;
    }

    private void mergeAccessedVariableNames(ExpressionInfo other) {
        if (this.fAccessedVariableNames == null) {
            this.fAccessedVariableNames = other.fAccessedVariableNames;
        } else if (other.fAccessedVariableNames != null) {
            Iterator iter = other.fAccessedVariableNames.iterator();
            while (iter.hasNext()) {
                Object variableName = iter.next();
                if (this.fAccessedVariableNames.contains(variableName)) continue;
                this.fAccessedVariableNames.add(variableName);
            }
        }
    }

    private void mergeAccessedPropertyNames(ExpressionInfo other) {
        if (this.fAccessedPropertyNames == null) {
            this.fAccessedPropertyNames = other.fAccessedPropertyNames;
        } else if (other.fAccessedPropertyNames != null) {
            Iterator iter = other.fAccessedPropertyNames.iterator();
            while (iter.hasNext()) {
                Object variableName = iter.next();
                if (this.fAccessedPropertyNames.contains(variableName)) continue;
                this.fAccessedPropertyNames.add(variableName);
            }
        }
    }

    private void mergeMisbehavingExpressionTypes(ExpressionInfo other) {
        if (this.fMisbehavingExpressionTypes == null) {
            this.fMisbehavingExpressionTypes = other.fMisbehavingExpressionTypes;
        } else if (other.fMisbehavingExpressionTypes != null) {
            Iterator iter = other.fMisbehavingExpressionTypes.iterator();
            while (iter.hasNext()) {
                Object clazz = iter.next();
                if (this.fMisbehavingExpressionTypes.contains(clazz)) continue;
                this.fMisbehavingExpressionTypes.add(clazz);
            }
        }
    }
}

