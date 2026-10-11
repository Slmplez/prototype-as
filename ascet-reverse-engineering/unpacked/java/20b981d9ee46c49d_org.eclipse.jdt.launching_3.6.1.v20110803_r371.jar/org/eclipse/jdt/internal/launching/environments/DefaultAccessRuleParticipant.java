/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jdt.core.IAccessRule
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.launching.environments;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.environments.IAccessRuleParticipant;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;

public class DefaultAccessRuleParticipant
implements IAccessRuleParticipant {
    private static Map fgRules = new HashMap();

    public IAccessRule[][] getAccessRules(IExecutionEnvironment environment, IVMInstall vm, LibraryLocation[] libraries, IJavaProject project) {
        IAccessRule[][] allRules = null;
        allRules = (IAccessRule[][])fgRules.get(environment.getId());
        if (allRules == null || allRules.length != libraries.length) {
            int i;
            String[] packages = this.retrieveSystemPackages(environment);
            IAccessRule[] packageRules = null;
            if (packages.length > 0) {
                packageRules = new IAccessRule[packages.length + 1];
                i = 0;
                while (i < packages.length) {
                    packageRules[i] = JavaCore.newAccessRule((IPath)new Path(packages[i].replace('.', '/')), (int)0);
                    ++i;
                }
                packageRules[packages.length] = JavaCore.newAccessRule((IPath)new Path("**/*"), (int)257);
            } else {
                packageRules = new IAccessRule[]{};
            }
            allRules = new IAccessRule[libraries.length][];
            i = 0;
            while (i < allRules.length) {
                allRules[i] = packageRules;
                ++i;
            }
            fgRules.put(environment.getId(), allRules);
        }
        return allRules;
    }

    private String[] retrieveSystemPackages(IExecutionEnvironment environment) {
        String packages;
        Properties profile = environment.getProfileProperties();
        if (profile != null && (packages = profile.getProperty("org.osgi.framework.system.packages")) != null) {
            StringTokenizer tokenizer = new StringTokenizer(packages, ",");
            String[] result = new String[tokenizer.countTokens() + 1];
            result[0] = "java.**";
            int i = 1;
            while (i < result.length) {
                result[i] = String.valueOf(tokenizer.nextToken().trim()) + ".*";
                ++i;
            }
            return result;
        }
        return new String[0];
    }
}

