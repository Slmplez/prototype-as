/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.engine;

import java.io.File;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.engine.EngineActivator;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.internal.p2.engine.ParameterizedProvisioningAction;
import org.eclipse.equinox.internal.p2.engine.PhaseSet;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.osgi.framework.BundleContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DebugHelper {
    public static final String LINE_SEPARATOR;
    public static final boolean DEBUG_PROFILE_REGISTRY;
    public static final boolean DEBUG_ENGINE;
    public static final boolean DEBUG_ENGINE_SESSION;
    static /* synthetic */ Class class$0;

    static {
        DebugOptions options;
        LINE_SEPARATOR = System.getProperty("line.separator");
        BundleContext bundleContext = EngineActivator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((options = (DebugOptions)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName())) != null) {
            DEBUG_PROFILE_REGISTRY = options.getBooleanOption("org.eclipse.equinox.p2.engine/profileregistry/debug", false);
            DEBUG_ENGINE = options.getBooleanOption("org.eclipse.equinox.p2.engine/engine/debug", false);
            DEBUG_ENGINE_SESSION = options.getBooleanOption("org.eclipse.equinox.p2.engine/enginesession/debug", false);
        } else {
            DEBUG_PROFILE_REGISTRY = false;
            DEBUG_ENGINE = false;
            DEBUG_ENGINE_SESSION = false;
        }
    }

    public static void debug(String name, String message) {
        StringBuffer buffer = new StringBuffer();
        buffer.append("[");
        buffer.append(new StringBuffer("org.eclipse.equinox.p2.engine-").append(name).toString());
        buffer.append("] ");
        buffer.append(new Date(System.currentTimeMillis()));
        buffer.append(" - [");
        buffer.append(Thread.currentThread().getName());
        buffer.append(new StringBuffer("] ").append(LINE_SEPARATOR).toString());
        buffer.append(message);
        System.out.println(buffer.toString());
    }

    public static String formatArray(Collection<? extends Object> array, boolean toString, boolean newLines) {
        if (array == null || array.size() == 0) {
            return "[]";
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append('[');
        boolean first = true;
        for (Object object : array) {
            if (first) {
                first = false;
            } else {
                buffer.append(',');
            }
            if (toString) {
                buffer.append(object.toString());
            } else {
                buffer.append(object.getClass().getName());
            }
            if (newLines) {
                buffer.append(LINE_SEPARATOR);
                continue;
            }
            buffer.append(' ');
        }
        buffer.append(']');
        return buffer.toString();
    }

    public static String formatOperation(PhaseSet phaseSet, Operand[] operands, ProvisioningContext context) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(new StringBuffer("phaseSet=").append(DebugHelper.formatPhaseSet(phaseSet)).toString());
        buffer.append(",");
        buffer.append(LINE_SEPARATOR);
        buffer.append(new StringBuffer("operands=").append(DebugHelper.formatOperands(operands)).toString());
        buffer.append(",");
        buffer.append(LINE_SEPARATOR);
        buffer.append(new StringBuffer("context=").append(DebugHelper.formatContext(context)).toString());
        return buffer.toString();
    }

    public static String formatOperands(Operand[] operands) {
        String[] operandStrings = new String[operands.length];
        int i = 0;
        while (i < operands.length) {
            if (operands[i] instanceof InstallableUnitOperand) {
                InstallableUnitOperand iuOperand = (InstallableUnitOperand)operands[i];
                operandStrings[i] = DebugHelper.formatInstallableUnitOperand(iuOperand);
            } else {
                operandStrings[i] = operands[i].toString();
            }
            ++i;
        }
        return DebugHelper.formatArray(Arrays.asList(operandStrings), true, true);
    }

    public static String formatInstallableUnitOperand(InstallableUnitOperand iuOperand) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(iuOperand.first());
        if (iuOperand.first() != null && iuOperand.first().getFragments() != null) {
            buffer.append(DebugHelper.formatArray(iuOperand.first().getFragments(), true, false));
        }
        buffer.append(" --> ");
        buffer.append(iuOperand.second());
        if (iuOperand.second() != null && iuOperand.second().getFragments() != null) {
            buffer.append(DebugHelper.formatArray(iuOperand.second().getFragments(), true, false));
        }
        return buffer.toString();
    }

    public static String formatPhaseSet(PhaseSet phaseSet) {
        StringBuffer buffer = new StringBuffer(phaseSet.getClass().getName());
        buffer.append(DebugHelper.formatArray(Arrays.asList(phaseSet.getPhases()), false, false));
        return buffer.toString();
    }

    public static String formatContext(ProvisioningContext context) {
        return context.toString();
    }

    public static String formatAction(ProvisioningAction action, Map<String, Object> parameters) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(action.getClass().getName());
        if (action instanceof ParameterizedProvisioningAction) {
            ParameterizedProvisioningAction parameterizedAction = (ParameterizedProvisioningAction)action;
            buffer.append(new StringBuffer("{action=").append(parameterizedAction.getAction().getClass().getName()).toString());
            buffer.append(new StringBuffer(", actionText=").append(parameterizedAction.getActionText()).append("}").toString());
        }
        buffer.append(LINE_SEPARATOR);
        buffer.append(new StringBuffer("parameters=").append(DebugHelper.formatParameters(parameters)).toString());
        return buffer.toString();
    }

    public static String formatParameters(Map<String, ? extends Object> parameters) {
        Iterator<Map.Entry<String, ? extends Object>> it = parameters.entrySet().iterator();
        if (!it.hasNext()) {
            return "{}";
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append('{');
        while (true) {
            Map.Entry<String, ? extends Object> e = it.next();
            String key = e.getKey();
            buffer.append(key);
            buffer.append('=');
            Object value = e.getValue();
            if (value instanceof String || value instanceof File || value instanceof Operand || value instanceof IArtifactKey || value instanceof IInstallableUnit) {
                buffer.append(value);
            } else if (value instanceof IProfile) {
                buffer.append(((IProfile)value).getProfileId());
            } else {
                buffer.append(value.getClass().getName());
            }
            if (!it.hasNext()) break;
            buffer.append(',');
            buffer.append(LINE_SEPARATOR);
            buffer.append(' ');
        }
        buffer.append('}');
        return buffer.toString();
    }
}

