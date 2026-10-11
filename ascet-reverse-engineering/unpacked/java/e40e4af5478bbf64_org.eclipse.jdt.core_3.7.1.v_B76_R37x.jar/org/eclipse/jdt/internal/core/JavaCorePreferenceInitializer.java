/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 */
package org.eclipse.jdt.internal.core;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.JavaModelManager;

public class JavaCorePreferenceInitializer
extends AbstractPreferenceInitializer {
    public void initializeDefaultPreferences() {
        HashSet optionNames = JavaModelManager.getJavaModelManager().optionNames;
        Map defaultOptionsMap = new CompilerOptions().getMap();
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.codegen.unusedLocal", "preserve");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.taskTags", "TODO,FIXME,XXX");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.taskPriorities", "NORMAL,HIGH,NORMAL");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.taskCaseSensitive", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.compiler.problem.forbiddenReference", "error");
        defaultOptionsMap.put("org.eclipse.jdt.core.builder.resourceCopyExclusionFilter", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.builder.invalidClasspath", "abort");
        defaultOptionsMap.put("org.eclipse.jdt.core.builder.duplicateResourceTask", "warning");
        defaultOptionsMap.put("org.eclipse.jdt.core.builder.cleanOutputFolder", "clean");
        defaultOptionsMap.put("org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder", "ignore");
        defaultOptionsMap.put("org.eclipse.jdt.core.computeJavaBuildOrder", "ignore");
        defaultOptionsMap.put("org.eclipse.jdt.core.incompleteClasspath", "error");
        defaultOptionsMap.put("org.eclipse.jdt.core.circularClasspath", "error");
        defaultOptionsMap.put("org.eclipse.jdt.core.incompatibleJDKLevel", "ignore");
        defaultOptionsMap.put("org.eclipse.jdt.core.classpath.exclusionPatterns", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.classpath.multipleOutputLocations", "enabled");
        optionNames.add("org.eclipse.jdt.core.encoding");
        Map codeFormatterOptionsMap = DefaultCodeFormatterConstants.getEclipseDefaultSettings();
        Iterator iter = codeFormatterOptionsMap.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = iter.next();
            String optionName = (String)entry.getKey();
            defaultOptionsMap.put(optionName, entry.getValue());
            optionNames.add(optionName);
        }
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.visibilityCheck", "disabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.deprecationCheck", "disabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.forceImplicitQualification", "disabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.fieldPrefixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.staticFieldPrefixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.localPrefixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.argumentPrefixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.fieldSuffixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.staticFieldSuffixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.localSuffixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.argumentSuffixes", "");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck", "disabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.camelCaseMatch", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.codeComplete.suggestStaticImports", "enabled");
        defaultOptionsMap.put("org.eclipse.jdt.core.timeoutForParameterNameFromAttachedJavadoc", "50");
        IEclipsePreferences defaultPreferences = DefaultScope.INSTANCE.getNode("org.eclipse.jdt.core");
        Iterator iter2 = defaultOptionsMap.entrySet().iterator();
        while (iter2.hasNext()) {
            Map.Entry entry = iter2.next();
            String optionName = (String)entry.getKey();
            defaultPreferences.put(optionName, (String)entry.getValue());
            optionNames.add(optionName);
        }
        this.initializeDeprecatedOptions();
    }

    private void initializeDeprecatedOptions() {
        Map deprecatedOptions = JavaModelManager.getJavaModelManager().deprecatedOptions;
        deprecatedOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_member", new String[]{"org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_field", "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_method", "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_package", "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_type"});
        deprecatedOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation", new String[]{"org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_field", "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_method", "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_package", "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_type", "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_local_variable", "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_parameter"});
    }
}

