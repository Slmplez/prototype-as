/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.tweaklets;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.statushandlers.StatusManager;

public class Tweaklets {
    private static Map defaults = new HashMap();
    private static Map tweaklets = new HashMap();

    public static void setDefault(TweakKey definition, Object implementation) {
        defaults.put(definition, implementation);
    }

    public static Object get(TweakKey definition) {
        Object result = tweaklets.get(definition);
        if (result == null) {
            result = Tweaklets.createTweaklet(definition);
            if (result == null) {
                result = Tweaklets.getDefault(definition);
            }
            Assert.isNotNull(result);
            tweaklets.put(definition, result);
        }
        return result;
    }

    private static Object getDefault(TweakKey definition) {
        return defaults.get(definition);
    }

    private static Object createTweaklet(TweakKey definition) {
        IConfigurationElement[] elements = Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.ui.internalTweaklets");
        int i = 0;
        while (i < elements.length) {
            if (definition.tweakClass.getName().equals(elements[i].getAttribute("definition"))) {
                try {
                    Object tweaklet = elements[i].createExecutableExtension("implementation");
                    tweaklets.put(definition, tweaklet);
                    return tweaklet;
                }
                catch (CoreException e) {
                    StatusManager.getManager().handle(StatusUtil.newStatus(4, "Error with extension " + elements[i], (Throwable)e), 1);
                }
            }
            ++i;
        }
        return null;
    }

    public static class TweakKey {
        Class tweakClass;

        public TweakKey(Class tweakClass) {
            this.tweakClass = tweakClass;
        }

        public int hashCode() {
            int result = 1;
            result = 31 * result + (this.tweakClass == null ? 0 : this.tweakClass.hashCode());
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
            TweakKey other = (TweakKey)obj;
            return !(this.tweakClass == null ? other.tweakClass != null : !this.tweakClass.equals(other.tweakClass));
        }
    }
}

