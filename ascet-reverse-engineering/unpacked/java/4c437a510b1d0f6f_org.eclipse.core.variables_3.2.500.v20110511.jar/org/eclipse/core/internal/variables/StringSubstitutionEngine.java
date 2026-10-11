/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.variables;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Stack;
import org.eclipse.core.internal.variables.VariablesMessages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.IValueVariable;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.osgi.util.NLS;

public class StringSubstitutionEngine {
    private static final String VARIABLE_START = "${";
    private static final char VARIABLE_END = '}';
    private static final char VARIABLE_ARG = ':';
    private static final int SCAN_FOR_START = 0;
    private static final int SCAN_FOR_END = 1;
    private StringBuffer fResult;
    private boolean fSubs;
    private Stack fStack;

    public String performStringSubstitution(String expression, boolean reportUndefinedVariables, boolean resolveVariables, IStringVariableManager manager) throws CoreException {
        this.substitute(expression, reportUndefinedVariables, resolveVariables, manager);
        ArrayList<HashSet> resolvedVariableSets = new ArrayList<HashSet>();
        while (this.fSubs) {
            HashSet resolved = this.substitute(this.fResult.toString(), reportUndefinedVariables, true, manager);
            int i = resolvedVariableSets.size() - 1;
            while (i >= 0) {
                HashSet prevSet = (HashSet)resolvedVariableSets.get(i);
                if (prevSet.equals(resolved)) {
                    HashSet conflictingSet = new HashSet();
                    while (i < resolvedVariableSets.size()) {
                        conflictingSet.addAll((HashSet)resolvedVariableSets.get(i));
                        ++i;
                    }
                    StringBuffer problemVariableList = new StringBuffer();
                    Iterator it = conflictingSet.iterator();
                    while (it.hasNext()) {
                        problemVariableList.append(it.next().toString());
                        problemVariableList.append(", ");
                    }
                    problemVariableList.setLength(problemVariableList.length() - 2);
                    throw new CoreException((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 130, NLS.bind((String)VariablesMessages.StringSubstitutionEngine_4, (Object[])new String[]{problemVariableList.toString()}), null));
                }
                --i;
            }
            resolvedVariableSets.add(resolved);
        }
        return this.fResult.toString();
    }

    public void validateStringVariables(String expression, IStringVariableManager manager) throws CoreException {
        this.performStringSubstitution(expression, true, false, manager);
    }

    private HashSet substitute(String expression, boolean reportUndefinedVariables, boolean resolveVariables, IStringVariableManager manager) throws CoreException {
        this.fResult = new StringBuffer(expression.length());
        this.fStack = new Stack();
        this.fSubs = false;
        HashSet<String> resolvedVariables = new HashSet<String>();
        int pos = 0;
        int state = 0;
        while (pos < expression.length()) {
            switch (state) {
                case 0: {
                    int start = expression.indexOf(VARIABLE_START, pos);
                    if (start >= 0) {
                        int length = start - pos;
                        if (length > 0) {
                            this.fResult.append(expression.substring(pos, start));
                        }
                        pos = start + 2;
                        state = 1;
                        this.fStack.push(new VariableReference());
                        break;
                    }
                    this.fResult.append(expression.substring(pos));
                    pos = expression.length();
                    break;
                }
                case 1: {
                    VariableReference tos;
                    int start = expression.indexOf(VARIABLE_START, pos);
                    int end = expression.indexOf(125, pos);
                    if (end < 0) {
                        tos = (VariableReference)this.fStack.peek();
                        tos.append(expression.substring(pos));
                        pos = expression.length();
                        break;
                    }
                    if (start >= 0 && start < end) {
                        int length = start - pos;
                        if (length > 0) {
                            VariableReference tos2 = (VariableReference)this.fStack.peek();
                            tos2.append(expression.substring(pos, start));
                        }
                        pos = start + 2;
                        this.fStack.push(new VariableReference());
                        break;
                    }
                    tos = (VariableReference)this.fStack.pop();
                    String substring = expression.substring(pos, end);
                    tos.append(substring);
                    resolvedVariables.add(substring);
                    pos = end + 1;
                    String value = this.resolve(tos, reportUndefinedVariables, resolveVariables, manager);
                    if (value == null) {
                        value = "";
                    }
                    if (this.fStack.isEmpty()) {
                        this.fResult.append(value);
                        state = 0;
                        break;
                    }
                    tos = (VariableReference)this.fStack.peek();
                    tos.append(value);
                }
            }
        }
        while (!this.fStack.isEmpty()) {
            VariableReference tos = (VariableReference)this.fStack.pop();
            if (this.fStack.isEmpty()) {
                this.fResult.append(VARIABLE_START);
                this.fResult.append(tos.getText());
                continue;
            }
            VariableReference var = (VariableReference)this.fStack.peek();
            var.append(VARIABLE_START);
            var.append(tos.getText());
        }
        return resolvedVariables;
    }

    private String resolve(VariableReference var, boolean reportUndefinedVariables, boolean resolveVariables, IStringVariableManager manager) throws CoreException {
        IValueVariable valueVariable;
        String text = var.getText();
        int pos = text.indexOf(58);
        String name = null;
        String arg = null;
        if (pos > 0) {
            name = text.substring(0, pos);
            if (++pos < text.length()) {
                arg = text.substring(pos);
            }
        } else {
            name = text;
        }
        if ((valueVariable = manager.getValueVariable(name)) == null) {
            IDynamicVariable dynamicVariable = manager.getDynamicVariable(name);
            if (dynamicVariable == null) {
                if (reportUndefinedVariables) {
                    throw new CoreException((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 120, NLS.bind((String)VariablesMessages.StringSubstitutionEngine_3, (Object[])new String[]{name}), null));
                }
                return this.getOriginalVarText(var);
            }
            if (resolveVariables) {
                this.fSubs = true;
                return dynamicVariable.getValue(arg);
            }
            return this.getOriginalVarText(var);
        }
        if (arg == null) {
            if (resolveVariables) {
                this.fSubs = true;
                return valueVariable.getValue();
            }
            return this.getOriginalVarText(var);
        }
        throw new CoreException((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 120, NLS.bind((String)VariablesMessages.StringSubstitutionEngine_4, (Object[])new String[]{valueVariable.getName()}), null));
    }

    private String getOriginalVarText(VariableReference var) {
        StringBuffer res = new StringBuffer(var.getText());
        res.insert(0, VARIABLE_START);
        res.append('}');
        return res.toString();
    }

    class VariableReference {
        private StringBuffer fText = new StringBuffer();

        public void append(String text) {
            this.fText.append(text);
        }

        public String getText() {
            return this.fText.toString();
        }
    }
}

