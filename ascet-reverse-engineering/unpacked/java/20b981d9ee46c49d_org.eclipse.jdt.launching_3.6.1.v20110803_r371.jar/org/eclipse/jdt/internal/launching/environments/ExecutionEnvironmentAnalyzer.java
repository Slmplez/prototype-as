/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.launching.environments;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.internal.launching.EEVMInstall;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstall2;
import org.eclipse.jdt.launching.IVMInstall3;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.environments.CompatibleEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentAnalyzerDelegate;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager;

public class ExecutionEnvironmentAnalyzer
implements IExecutionEnvironmentAnalyzerDelegate {
    private static final String JavaSE_1_7 = "JavaSE-1.7";
    private static final String JavaSE_1_6 = "JavaSE-1.6";
    private static final String J2SE_1_5 = "J2SE-1.5";
    private static final String J2SE_1_4 = "J2SE-1.4";
    private static final String J2SE_1_3 = "J2SE-1.3";
    private static final String J2SE_1_2 = "J2SE-1.2";
    private static final String JRE_1_1 = "JRE-1.1";
    private static final String CDC_FOUNDATION_1_1 = "CDC-1.1/Foundation-1.1";
    private static final String CDC_FOUNDATION_1_0 = "CDC-1.0/Foundation-1.0";
    private static final String OSGI_MINIMUM_1_0 = "OSGi/Minimum-1.0";
    private static final String OSGI_MINIMUM_1_1 = "OSGi/Minimum-1.1";
    private static final String OSGI_MINIMUM_1_2 = "OSGi/Minimum-1.2";
    private static final String JAVA_SPEC_VERSION = "java.specification.version";
    private static final String JAVA_SPEC_NAME = "java.specification.name";
    private static final String JAVA_VERSION = "java.version";
    private static final String[] VM_PROPERTIES = new String[]{"java.specification.name", "java.specification.version", "java.version"};
    private static final String FOUNDATION = "foundation";
    private static final Map mappings = new HashMap();

    static {
        mappings.put(CDC_FOUNDATION_1_0, new String[]{OSGI_MINIMUM_1_0});
        mappings.put(CDC_FOUNDATION_1_1, new String[]{CDC_FOUNDATION_1_0, OSGI_MINIMUM_1_2});
        mappings.put(OSGI_MINIMUM_1_1, new String[]{OSGI_MINIMUM_1_0});
        mappings.put(OSGI_MINIMUM_1_2, new String[]{OSGI_MINIMUM_1_1});
        mappings.put(J2SE_1_2, new String[]{JRE_1_1});
        mappings.put(J2SE_1_3, new String[]{J2SE_1_2, CDC_FOUNDATION_1_0, OSGI_MINIMUM_1_0});
        mappings.put(J2SE_1_4, new String[]{J2SE_1_3, CDC_FOUNDATION_1_1, OSGI_MINIMUM_1_2});
        mappings.put(J2SE_1_5, new String[]{J2SE_1_4});
        mappings.put(JavaSE_1_6, new String[]{J2SE_1_5});
        mappings.put(JavaSE_1_7, new String[]{JavaSE_1_6});
    }

    public CompatibleEnvironment[] analyze(IVMInstall vm, IProgressMonitor monitor) throws CoreException {
        String eeId;
        ArrayList result = new ArrayList();
        if (!(vm instanceof IVMInstall2)) {
            return new CompatibleEnvironment[0];
        }
        IVMInstall2 vm2 = (IVMInstall2)((Object)vm);
        List types = null;
        if ("org.eclipse.jdt.launching.EEVMType".equals(vm.getVMInstallType().getId()) && (eeId = ((EEVMInstall)vm).getAttribute("ATTR_EXECUTION_ENVIRONMENT_ID")) != null) {
            types = this.getTypes(eeId);
        }
        if (types == null) {
            String javaVersion = vm2.getJavaVersion();
            if (javaVersion == null) {
                if (vm instanceof IVMInstall3 && this.isFoundation1_0((IVMInstall3)((Object)vm))) {
                    types = this.getTypes(CDC_FOUNDATION_1_0);
                } else if (vm instanceof IVMInstall3 && this.isFoundation1_1((IVMInstall3)((Object)vm))) {
                    types = this.getTypes(CDC_FOUNDATION_1_1);
                }
            } else if (javaVersion.startsWith("1.7")) {
                types = this.getTypes(JavaSE_1_7);
            } else if (javaVersion.startsWith("1.6")) {
                types = this.getTypes(JavaSE_1_6);
            } else if (javaVersion.startsWith("1.5")) {
                types = this.getTypes(J2SE_1_5);
            } else if (javaVersion.startsWith("1.4")) {
                types = this.getTypes(J2SE_1_4);
            } else if (javaVersion.startsWith("1.3")) {
                types = this.getTypes(J2SE_1_3);
            } else if (javaVersion.startsWith("1.2")) {
                types = this.getTypes(J2SE_1_2);
            } else if (javaVersion.startsWith("1.1")) {
                types = vm instanceof IVMInstall3 && this.isFoundation1_1((IVMInstall3)((Object)vm)) ? this.getTypes(CDC_FOUNDATION_1_1) : this.getTypes(JRE_1_1);
            } else if (javaVersion.startsWith("1.0") && vm instanceof IVMInstall3 && this.isFoundation1_0((IVMInstall3)((Object)vm))) {
                types = this.getTypes(CDC_FOUNDATION_1_0);
            }
        }
        if (types != null) {
            int i = 0;
            while (i < types.size()) {
                this.addEnvironment(result, (String)types.get(i), i == 0);
                ++i;
            }
        }
        return result.toArray(new CompatibleEnvironment[result.size()]);
    }

    private boolean isFoundation(Map properties) {
        int i = 0;
        while (i < VM_PROPERTIES.length) {
            String value = (String)properties.get(VM_PROPERTIES[i]);
            if (value != null) {
                StringTokenizer tokenizer = new StringTokenizer(value);
                while (tokenizer.hasMoreTokens()) {
                    if (!FOUNDATION.equalsIgnoreCase(tokenizer.nextToken())) continue;
                    return true;
                }
            }
            ++i;
        }
        return false;
    }

    private boolean isFoundation1_0(IVMInstall3 vm) throws CoreException {
        Map map = vm.evaluateSystemProperties(VM_PROPERTIES, null);
        return this.isFoundation(map) ? "1.0".equals(map.get(JAVA_SPEC_VERSION)) : false;
    }

    private boolean isFoundation1_1(IVMInstall3 vm) throws CoreException {
        Map map = vm.evaluateSystemProperties(VM_PROPERTIES, null);
        return this.isFoundation(map) ? "1.1".equals(map.get(JAVA_SPEC_VERSION)) : false;
    }

    private void addEnvironment(ArrayList result, String id, boolean strict) {
        IExecutionEnvironmentsManager manager = JavaRuntime.getExecutionEnvironmentsManager();
        IExecutionEnvironment env = manager.getEnvironment(id);
        if (env != null) {
            result.add(new CompatibleEnvironment(env, strict));
        }
    }

    private List getTypes(String type) {
        ArrayList<String> result = new ArrayList<String>();
        result.add(type);
        String[] values = (String[])mappings.get(type);
        if (values != null) {
            int i = 0;
            while (i < values.length) {
                result.addAll(this.getTypes(values[i]));
                ++i;
            }
        }
        return result;
    }
}

