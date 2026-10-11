/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.Preferences$PropertyChangeEvent
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.ILogicalStructureProvider
 *  org.eclipse.debug.core.ILogicalStructureType
 *  org.eclipse.debug.core.model.IValue
 */
package org.eclipse.jdt.internal.debug.core.logicalstructures;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.ILogicalStructureProvider;
import org.eclipse.debug.core.ILogicalStructureType;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaInterfaceType;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.logicalstructures.IJavaStructuresListener;
import org.eclipse.jdt.internal.debug.core.logicalstructures.JavaLogicalStructure;

public class JavaLogicalStructures
implements ILogicalStructureProvider {
    static final char IS_SUBTYPE_TRUE = 'T';
    static final char IS_SUBTYPE_FALSE = 'F';
    private static Map fJavaLogicalStructureMap;
    private static List fPluginContributedJavaLogicalStructures;
    private static List fUserDefinedJavaLogicalStructures;
    private static Set fListeners;
    private static final String PREF_JAVA_LOGICAL_STRUCTURES;

    static {
        fListeners = new HashSet();
        PREF_JAVA_LOGICAL_STRUCTURES = String.valueOf(JDIDebugModel.getPluginIdentifier()) + ".PREF_JAVA_LOGICAL_STRUCTURES";
        JavaLogicalStructures.initPluginContributedJavaLogicalStructure();
        JavaLogicalStructures.initUserDefinedJavaLogicalStructures();
        JavaLogicalStructures.initJavaLogicalStructureMap();
        JDIDebugPlugin.getDefault().getPluginPreferences().addPropertyChangeListener((Preferences.IPropertyChangeListener)new PreferenceListener());
    }

    private static void initJavaLogicalStructureMap() {
        fJavaLogicalStructureMap = new HashMap();
        JavaLogicalStructures.addAllLogicalStructures(fPluginContributedJavaLogicalStructures);
        JavaLogicalStructures.addAllLogicalStructures(fUserDefinedJavaLogicalStructures);
    }

    private static void addAllLogicalStructures(List pluginContributedJavaLogicalStructures) {
        Iterator iter = pluginContributedJavaLogicalStructures.iterator();
        while (iter.hasNext()) {
            JavaLogicalStructures.addLogicalStructure((JavaLogicalStructure)iter.next());
        }
    }

    private static void addLogicalStructure(JavaLogicalStructure structure) {
        String typeName = structure.getQualifiedTypeName();
        ArrayList<JavaLogicalStructure> logicalStructure = (ArrayList<JavaLogicalStructure>)fJavaLogicalStructureMap.get(typeName);
        if (logicalStructure == null) {
            logicalStructure = new ArrayList<JavaLogicalStructure>();
            fJavaLogicalStructureMap.put(typeName, logicalStructure);
        }
        logicalStructure.add(structure);
    }

    private static void initPluginContributedJavaLogicalStructure() {
        fPluginContributedJavaLogicalStructures = new ArrayList();
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(JDIDebugPlugin.getUniqueIdentifier(), "javaLogicalStructures");
        IConfigurationElement[] javaLogicalStructureElements = extensionPoint.getConfigurationElements();
        int i = 0;
        while (i < javaLogicalStructureElements.length) {
            try {
                fPluginContributedJavaLogicalStructures.add(new JavaLogicalStructure(javaLogicalStructureElements[i]));
            }
            catch (CoreException e) {
                JDIDebugPlugin.log(e);
            }
            ++i;
        }
    }

    private static void initUserDefinedJavaLogicalStructures() {
        fUserDefinedJavaLogicalStructures = new ArrayList();
        String logicalStructuresString = JDIDebugModel.getPreferences().getString(PREF_JAVA_LOGICAL_STRUCTURES);
        StringTokenizer tokenizer = new StringTokenizer(logicalStructuresString, "\u0000", true);
        while (tokenizer.hasMoreTokens()) {
            String type = tokenizer.nextToken();
            tokenizer.nextToken();
            String description = tokenizer.nextToken();
            tokenizer.nextToken();
            String isSubtypeValue = tokenizer.nextToken();
            boolean isSubtype = isSubtypeValue.charAt(0) == 'T';
            tokenizer.nextToken();
            String value = tokenizer.nextToken();
            if (value.charAt(0) == '\u0000') {
                value = null;
            } else {
                tokenizer.nextToken();
            }
            String variablesCounterValue = tokenizer.nextToken();
            int variablesCounter = Integer.parseInt(variablesCounterValue);
            tokenizer.nextToken();
            String[][] variables = new String[variablesCounter][2];
            int i = 0;
            while (i < variablesCounter) {
                variables[i][0] = tokenizer.nextToken();
                tokenizer.nextToken();
                variables[i][1] = tokenizer.nextToken();
                tokenizer.nextToken();
                ++i;
            }
            fUserDefinedJavaLogicalStructures.add(new JavaLogicalStructure(type, isSubtype, value, description, variables));
        }
    }

    public static void saveUserDefinedJavaLogicalStructures() {
        StringBuffer logicalStructuresString = new StringBuffer();
        Iterator iter = fUserDefinedJavaLogicalStructures.iterator();
        while (iter.hasNext()) {
            JavaLogicalStructure logicalStructure = (JavaLogicalStructure)iter.next();
            logicalStructuresString.append(logicalStructure.getQualifiedTypeName()).append('\u0000');
            logicalStructuresString.append(logicalStructure.getDescription()).append('\u0000');
            logicalStructuresString.append(logicalStructure.isSubtypes() ? (char)'T' : 'F').append('\u0000');
            String value = logicalStructure.getValue();
            if (value != null) {
                logicalStructuresString.append(value);
            }
            logicalStructuresString.append('\u0000');
            String[][] variables = logicalStructure.getVariables();
            logicalStructuresString.append(variables.length).append('\u0000');
            int i = 0;
            while (i < variables.length) {
                String[] strings = variables[i];
                logicalStructuresString.append(strings[0]).append('\u0000');
                logicalStructuresString.append(strings[1]).append('\u0000');
                ++i;
            }
        }
        JDIDebugModel.getPreferences().setValue(PREF_JAVA_LOGICAL_STRUCTURES, logicalStructuresString.toString());
    }

    public static JavaLogicalStructure[] getJavaLogicalStructures() {
        JavaLogicalStructure[] logicalStructures = new JavaLogicalStructure[fPluginContributedJavaLogicalStructures.size() + fUserDefinedJavaLogicalStructures.size()];
        int i = 0;
        Iterator iter = fPluginContributedJavaLogicalStructures.iterator();
        while (iter.hasNext()) {
            logicalStructures[i++] = (JavaLogicalStructure)iter.next();
        }
        iter = fUserDefinedJavaLogicalStructures.iterator();
        while (iter.hasNext()) {
            logicalStructures[i++] = (JavaLogicalStructure)iter.next();
        }
        return logicalStructures;
    }

    public static void setUserDefinedJavaLogicalStructures(JavaLogicalStructure[] logicalStructures) {
        fUserDefinedJavaLogicalStructures = Arrays.asList(logicalStructures);
        JavaLogicalStructures.saveUserDefinedJavaLogicalStructures();
    }

    public static void addStructuresListener(IJavaStructuresListener listener) {
        fListeners.add(listener);
    }

    public static void removeStructuresListener(IJavaStructuresListener listener) {
        fListeners.remove(listener);
    }

    public ILogicalStructureType[] getLogicalStructureTypes(IValue value) {
        if (!(value instanceof IJavaObject)) {
            return new ILogicalStructureType[0];
        }
        IJavaObject javaValue = (IJavaObject)value;
        ArrayList logicalStructures = new ArrayList();
        try {
            IJavaType type = javaValue.getJavaType();
            if (!(type instanceof IJavaClassType)) {
                return new ILogicalStructureType[0];
            }
            IJavaClassType classType = (IJavaClassType)type;
            List list = (List)fJavaLogicalStructureMap.get(classType.getName());
            if (list != null) {
                logicalStructures.addAll(list);
            }
            IJavaClassType superClass = classType.getSuperclass();
            while (superClass != null) {
                this.addIfIsSubtype(logicalStructures, (List)fJavaLogicalStructureMap.get(superClass.getName()));
                superClass = superClass.getSuperclass();
            }
            IJavaInterfaceType[] superInterfaces = classType.getAllInterfaces();
            int i = 0;
            while (i < superInterfaces.length) {
                this.addIfIsSubtype(logicalStructures, (List)fJavaLogicalStructureMap.get(superInterfaces[i].getName()));
                ++i;
            }
        }
        catch (DebugException e) {
            JDIDebugPlugin.log(e);
            return new ILogicalStructureType[0];
        }
        return logicalStructures.toArray(new ILogicalStructureType[logicalStructures.size()]);
    }

    private void addIfIsSubtype(List logicalStructures, List list) {
        if (list == null) {
            return;
        }
        Iterator iter = list.iterator();
        while (iter.hasNext()) {
            JavaLogicalStructure logicalStructure = (JavaLogicalStructure)iter.next();
            if (!logicalStructure.isSubtypes()) continue;
            logicalStructures.add(logicalStructure);
        }
    }

    static class PreferenceListener
    implements Preferences.IPropertyChangeListener {
        PreferenceListener() {
        }

        public void propertyChange(Preferences.PropertyChangeEvent event) {
            if (PREF_JAVA_LOGICAL_STRUCTURES.equals(event.getProperty())) {
                JavaLogicalStructures.initUserDefinedJavaLogicalStructures();
                JavaLogicalStructures.initJavaLogicalStructureMap();
                Iterator iter = fListeners.iterator();
                while (iter.hasNext()) {
                    ((IJavaStructuresListener)iter.next()).logicalStructuresChanged();
                }
            }
        }
    }
}

