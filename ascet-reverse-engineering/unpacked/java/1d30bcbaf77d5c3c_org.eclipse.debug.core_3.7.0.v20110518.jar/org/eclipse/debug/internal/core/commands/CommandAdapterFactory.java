/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdapterFactory
 */
package org.eclipse.debug.internal.core.commands;

import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.commands.IDisconnectHandler;
import org.eclipse.debug.core.commands.IDropToFrameHandler;
import org.eclipse.debug.core.commands.IResumeHandler;
import org.eclipse.debug.core.commands.IStepFiltersHandler;
import org.eclipse.debug.core.commands.IStepIntoHandler;
import org.eclipse.debug.core.commands.IStepOverHandler;
import org.eclipse.debug.core.commands.IStepReturnHandler;
import org.eclipse.debug.core.commands.ISuspendHandler;
import org.eclipse.debug.core.commands.ITerminateHandler;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IDisconnect;
import org.eclipse.debug.core.model.IDropToFrame;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.IStep;
import org.eclipse.debug.core.model.ISuspendResume;
import org.eclipse.debug.core.model.ITerminate;
import org.eclipse.debug.internal.core.commands.DisconnectCommand;
import org.eclipse.debug.internal.core.commands.DropToFrameCommand;
import org.eclipse.debug.internal.core.commands.ResumeCommand;
import org.eclipse.debug.internal.core.commands.StepFiltersCommand;
import org.eclipse.debug.internal.core.commands.StepIntoCommand;
import org.eclipse.debug.internal.core.commands.StepOverCommand;
import org.eclipse.debug.internal.core.commands.StepReturnCommand;
import org.eclipse.debug.internal.core.commands.SuspendCommand;
import org.eclipse.debug.internal.core.commands.TerminateCommand;

public class CommandAdapterFactory
implements IAdapterFactory {
    private static ITerminateHandler fgTerminateCommand = new TerminateCommand();
    private static IStepOverHandler fgStepOverCommand = new StepOverCommand();
    private static IStepIntoHandler fgStepIntoCommand = new StepIntoCommand();
    private static IStepReturnHandler fgStepReturnCommand = new StepReturnCommand();
    private static IDropToFrameHandler fgDropToFrameCommand = new DropToFrameCommand();
    private static IDisconnectHandler fgDisconnectCommand = new DisconnectCommand();
    private static ISuspendHandler fgSuspendCommand = new SuspendCommand();
    private static IResumeHandler fgResumeCommand = new ResumeCommand();
    private static IStepFiltersHandler fgStepFiltersCommand = new StepFiltersCommand();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;

    public Object getAdapter(Object adaptableObject, Class adapterType) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.commands.IStepFiltersHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(adapterType) && (adaptableObject instanceof IDebugElement || adaptableObject instanceof ILaunch || adaptableObject instanceof IProcess)) {
            return fgStepFiltersCommand;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.debug.core.commands.ITerminateHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz2.equals(adapterType) && adaptableObject instanceof ITerminate) {
            return fgTerminateCommand;
        }
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.debug.core.commands.IStepOverHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz3.equals(adapterType) && adaptableObject instanceof IStep) {
            return fgStepOverCommand;
        }
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("org.eclipse.debug.core.commands.IStepIntoHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz4.equals(adapterType) && adaptableObject instanceof IStep) {
            return fgStepIntoCommand;
        }
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("org.eclipse.debug.core.commands.IStepReturnHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz5.equals(adapterType) && adaptableObject instanceof IStep) {
            return fgStepReturnCommand;
        }
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("org.eclipse.debug.core.commands.ISuspendHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz6.equals(adapterType) && adaptableObject instanceof ISuspendResume) {
            return fgSuspendCommand;
        }
        Class<?> clazz7 = class$6;
        if (clazz7 == null) {
            try {
                clazz7 = class$6 = Class.forName("org.eclipse.debug.core.commands.IResumeHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz7.equals(adapterType) && adaptableObject instanceof ISuspendResume) {
            return fgResumeCommand;
        }
        Class<?> clazz8 = class$7;
        if (clazz8 == null) {
            try {
                clazz8 = class$7 = Class.forName("org.eclipse.debug.core.commands.IDisconnectHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz8.equals(adapterType) && adaptableObject instanceof IDisconnect) {
            return fgDisconnectCommand;
        }
        Class<?> clazz9 = class$8;
        if (clazz9 == null) {
            try {
                clazz9 = class$8 = Class.forName("org.eclipse.debug.core.commands.IDropToFrameHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz9.equals(adapterType) && adaptableObject instanceof IDropToFrame) {
            return fgDropToFrameCommand;
        }
        return null;
    }

    public Class[] getAdapterList() {
        Class[] classArray = new Class[9];
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.debug.core.commands.ITerminateHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class<?> clazz2 = class$2;
        if (clazz2 == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.debug.core.commands.IStepOverHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz2;
        Class<?> clazz3 = class$3;
        if (clazz3 == null) {
            try {
                clazz3 = class$3 = Class.forName("org.eclipse.debug.core.commands.IStepIntoHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[2] = clazz3;
        Class<?> clazz4 = class$4;
        if (clazz4 == null) {
            try {
                clazz4 = class$4 = Class.forName("org.eclipse.debug.core.commands.IStepReturnHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[3] = clazz4;
        Class<?> clazz5 = class$5;
        if (clazz5 == null) {
            try {
                clazz5 = class$5 = Class.forName("org.eclipse.debug.core.commands.ISuspendHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[4] = clazz5;
        Class<?> clazz6 = class$6;
        if (clazz6 == null) {
            try {
                clazz6 = class$6 = Class.forName("org.eclipse.debug.core.commands.IResumeHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[5] = clazz6;
        Class<?> clazz7 = class$8;
        if (clazz7 == null) {
            try {
                clazz7 = class$8 = Class.forName("org.eclipse.debug.core.commands.IDropToFrameHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[6] = clazz7;
        Class<?> clazz8 = class$7;
        if (clazz8 == null) {
            try {
                clazz8 = class$7 = Class.forName("org.eclipse.debug.core.commands.IDisconnectHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[7] = clazz8;
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.debug.core.commands.IStepFiltersHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[8] = clazz9;
        return classArray;
    }
}

