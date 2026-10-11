/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILogicalStructureType
 *  org.eclipse.debug.core.IStatusHandler
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.ISourceLocator
 *  org.eclipse.debug.core.model.IStackFrame
 *  org.eclipse.debug.core.model.IThread
 *  org.eclipse.debug.core.model.IValue
 *  org.eclipse.debug.core.sourcelookup.ISourceLookupDirector
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.debug.core.logicalstructures;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILogicalStructureType;
import org.eclipse.debug.core.IStatusHandler;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.ISourceLocator;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.debug.core.model.IThread;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaInterfaceType;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.debug.eval.IAstEvaluationEngine;
import org.eclipse.jdt.debug.eval.ICompiledExpression;
import org.eclipse.jdt.debug.eval.IEvaluationListener;
import org.eclipse.jdt.debug.eval.IEvaluationResult;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.logicalstructures.JDIPlaceholderVariable;
import org.eclipse.jdt.internal.debug.core.logicalstructures.JavaStructureErrorValue;
import org.eclipse.jdt.internal.debug.core.logicalstructures.LogicalObjectStructureValue;
import org.eclipse.jdt.internal.debug.core.logicalstructures.LogicalStructuresMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public class JavaLogicalStructure
implements ILogicalStructureType {
    private static IStatusHandler fgStackFrameProvider;
    private String fType;
    private boolean fSubtypes;
    private String fValue;
    private String fDescription;
    private String[][] fVariables;
    private String fContributingPluginId = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public JavaLogicalStructure(String type, boolean subtypes, String value, String description, String[][] variables) {
        this.fType = type;
        this.fSubtypes = subtypes;
        this.fValue = value;
        this.fDescription = description;
        this.fVariables = variables;
    }

    public JavaLogicalStructure(IConfigurationElement configurationElement) throws CoreException {
        this.fType = configurationElement.getAttribute("type");
        if (this.fType == null) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 120, LogicalStructuresMessages.JavaLogicalStructures_0, null));
        }
        this.fSubtypes = Boolean.valueOf(configurationElement.getAttribute("subtypes"));
        this.fValue = configurationElement.getAttribute("value");
        this.fDescription = configurationElement.getAttribute("description");
        if (this.fDescription == null) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 120, LogicalStructuresMessages.JavaLogicalStructures_4, null));
        }
        IConfigurationElement[] variableElements = configurationElement.getChildren("variable");
        if (this.fValue == null && variableElements.length == 0) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 120, LogicalStructuresMessages.JavaLogicalStructures_1, null));
        }
        this.fVariables = new String[variableElements.length][2];
        int j = 0;
        while (j < this.fVariables.length) {
            String variableName = variableElements[j].getAttribute("name");
            if (variableName == null) {
                throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 120, LogicalStructuresMessages.JavaLogicalStructures_2, null));
            }
            this.fVariables[j][0] = variableName;
            String variableValue = variableElements[j].getAttribute("value");
            if (variableValue == null) {
                throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 120, LogicalStructuresMessages.JavaLogicalStructures_3, null));
            }
            this.fVariables[j][1] = variableValue;
            ++j;
        }
        this.fContributingPluginId = configurationElement.getContributor().getName();
    }

    public boolean providesLogicalStructure(IValue value) {
        if (!(value instanceof IJavaObject)) {
            return false;
        }
        return this.getType((IJavaObject)value) != null;
    }

    public IValue getLogicalStructure(IValue value) throws CoreException {
        if (!(value instanceof IJavaObject)) {
            return value;
        }
        IJavaObject javaValue = (IJavaObject)value;
        try {
            IJavaProject resourceProject;
            IJavaReferenceType type = this.getType(javaValue);
            if (type == null) {
                return value;
            }
            IJavaStackFrame stackFrame = this.getStackFrame(javaValue);
            if (stackFrame == null) {
                return value;
            }
            ISourceLocator locator = javaValue.getLaunch().getSourceLocator();
            Object sourceElement = null;
            if (locator instanceof ISourceLookupDirector) {
                String[] sourcePaths = type.getSourcePaths(null);
                if (sourcePaths != null && sourcePaths.length > 0) {
                    sourceElement = ((ISourceLookupDirector)locator).getSourceElement((Object)sourcePaths[0]);
                }
                if (!(sourceElement instanceof IJavaElement) && sourceElement instanceof IAdaptable) {
                    IAdaptable iAdaptable = (IAdaptable)sourceElement;
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = class$0 = Class.forName("org.eclipse.jdt.core.IJavaElement");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    sourceElement = iAdaptable.getAdapter((Class)clazz);
                }
            }
            if (sourceElement == null && !((sourceElement = locator.getSourceElement((IStackFrame)stackFrame)) instanceof IJavaElement) && sourceElement instanceof IAdaptable) {
                IAdaptable iAdaptable = (IAdaptable)sourceElement;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jdt.core.IJavaElement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                sourceElement = iAdaptable.getAdapter((Class)clazz);
            }
            IJavaProject project = null;
            if (sourceElement instanceof IJavaElement) {
                project = ((IJavaElement)sourceElement).getJavaProject();
            } else if (sourceElement instanceof IResource && (resourceProject = JavaCore.create((IProject)((IResource)sourceElement).getProject())).exists()) {
                project = resourceProject;
            }
            if (project == null) {
                return value;
            }
            IAstEvaluationEngine evaluationEngine = JDIDebugPlugin.getDefault().getEvaluationEngine(project, (IJavaDebugTarget)stackFrame.getDebugTarget());
            EvaluationBlock evaluationBlock = new EvaluationBlock(javaValue, type, (IJavaThread)stackFrame.getThread(), evaluationEngine);
            if (this.fValue == null) {
                IJavaVariable[] variables = new IJavaVariable[this.fVariables.length];
                int i = 0;
                while (i < this.fVariables.length) {
                    variables[i] = new JDIPlaceholderVariable(this.fVariables[i][0], evaluationBlock.evaluate(this.fVariables[i][1]), javaValue);
                    ++i;
                }
                return new LogicalObjectStructureValue(javaValue, variables);
            }
            IJavaValue logicalValue = evaluationBlock.evaluate(this.fValue);
            if (logicalValue instanceof JDIValue) {
                ((JDIValue)logicalValue).setLogicalParent(javaValue);
            }
            return logicalValue;
        }
        catch (CoreException e) {
            if (e.getStatus().getCode() == 100) {
                throw e;
            }
            JDIDebugPlugin.log(e);
            return value;
        }
    }

    private IJavaReferenceType getType(IJavaObject value) {
        IJavaClassType classType;
        block10: {
            IJavaType type;
            block9: {
                type = value.getJavaType();
                if (type instanceof IJavaClassType) break block9;
                return null;
            }
            classType = (IJavaClassType)type;
            if (classType.getName().equals(this.fType)) {
                return classType;
            }
            if (this.fSubtypes) break block10;
            return null;
        }
        try {
            IJavaClassType superClass = classType.getSuperclass();
            while (superClass != null) {
                if (superClass.getName().equals(this.fType)) {
                    return superClass;
                }
                superClass = superClass.getSuperclass();
            }
            IJavaInterfaceType[] superInterfaces = classType.getAllInterfaces();
            int i = 0;
            while (i < superInterfaces.length) {
                if (superInterfaces[i].getName().equals(this.fType)) {
                    return superInterfaces[i];
                }
                ++i;
            }
        }
        catch (DebugException e) {
            JDIDebugPlugin.log(e);
            return null;
        }
        return null;
    }

    private IJavaStackFrame getStackFrame(IValue value) throws CoreException {
        IJavaDebugTarget javaTarget;
        IJavaStackFrame stackFrame;
        IStatusHandler handler = JavaLogicalStructure.getStackFrameProvider();
        if (handler != null && (stackFrame = (IJavaStackFrame)handler.handleStatus(JDIDebugPlugin.STATUS_GET_EVALUATION_FRAME, (Object)value)) != null) {
            return stackFrame;
        }
        IDebugTarget target = value.getDebugTarget();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.debug.core.IJavaDebugTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((javaTarget = (IJavaDebugTarget)target.getAdapter((Class)clazz)) != null) {
            IThread[] threads = javaTarget.getThreads();
            int i = 0;
            while (i < threads.length) {
                IThread thread = threads[i];
                if (thread.isSuspended()) {
                    return (IJavaStackFrame)thread.getTopStackFrame();
                }
                ++i;
            }
        }
        return null;
    }

    private static IStatusHandler getStackFrameProvider() {
        if (fgStackFrameProvider == null) {
            fgStackFrameProvider = DebugPlugin.getDefault().getStatusHandler(JDIDebugPlugin.STATUS_GET_EVALUATION_FRAME);
        }
        return fgStackFrameProvider;
    }

    public boolean isSubtypes() {
        return this.fSubtypes;
    }

    public void setSubtypes(boolean subtypes) {
        this.fSubtypes = subtypes;
    }

    public String getQualifiedTypeName() {
        return this.fType;
    }

    public void setType(String type) {
        this.fType = type;
    }

    public String getValue() {
        return this.fValue;
    }

    public void setValue(String value) {
        this.fValue = value;
    }

    public String[][] getVariables() {
        return this.fVariables;
    }

    public void setVariables(String[][] variables) {
        this.fVariables = variables;
    }

    public void setDescription(String description) {
        this.fDescription = description;
    }

    public String getDescription(IValue value) {
        return this.getDescription();
    }

    public String getDescription() {
        return this.fDescription;
    }

    public boolean isContributed() {
        return this.fContributingPluginId != null;
    }

    public String getContributingPluginId() {
        return this.fContributingPluginId;
    }

    public String getId() {
        return String.valueOf(JDIDebugPlugin.getUniqueIdentifier()) + this.fType + this.fDescription;
    }

    private class EvaluationBlock
    implements IEvaluationListener {
        private IJavaObject fEvaluationValue;
        private IJavaReferenceType fEvaluationType;
        private IJavaThread fThread;
        private IAstEvaluationEngine fEvaluationEngine;
        private IEvaluationResult fResult;

        public EvaluationBlock(IJavaObject value, IJavaReferenceType type, IJavaThread thread, IAstEvaluationEngine evaluationEngine) {
            this.fEvaluationValue = value;
            this.fEvaluationType = type;
            this.fThread = thread;
            this.fEvaluationEngine = evaluationEngine;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void evaluationComplete(IEvaluationResult result) {
            EvaluationBlock evaluationBlock = this;
            synchronized (evaluationBlock) {
                this.fResult = result;
                this.notify();
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public IJavaValue evaluate(String snippet) throws DebugException {
            ICompiledExpression compiledExpression = this.fEvaluationEngine.getCompiledExpression(snippet, this.fEvaluationType);
            if (compiledExpression.hasErrors()) {
                String[] errorMessages = compiledExpression.getErrorMessages();
                this.log(errorMessages);
                return new JavaStructureErrorValue(errorMessages, (IJavaValue)this.fEvaluationValue);
            }
            this.fResult = null;
            this.fEvaluationEngine.evaluateExpression(compiledExpression, this.fEvaluationValue, this.fThread, this, 128, false);
            EvaluationBlock errorMessages = this;
            synchronized (errorMessages) {
                if (this.fResult == null) {
                    try {
                        this.wait();
                    }
                    catch (InterruptedException interruptedException) {}
                }
            }
            if (this.fResult == null) {
                return new JavaStructureErrorValue(LogicalStructuresMessages.JavaLogicalStructure_1, (IJavaValue)this.fEvaluationValue);
            }
            if (this.fResult.hasErrors()) {
                String message;
                DebugException exception = this.fResult.getException();
                if (exception != null) {
                    if (exception.getStatus().getException() instanceof UnsupportedOperationException) {
                        message = LogicalStructuresMessages.JavaLogicalStructure_0;
                    } else {
                        if (exception.getStatus().getCode() == 100) {
                            throw exception;
                        }
                        message = MessageFormat.format((String)LogicalStructuresMessages.JavaLogicalStructure_2, (Object[])new String[]{exception.getMessage()});
                    }
                } else {
                    message = LogicalStructuresMessages.JavaLogicalStructure_3;
                }
                return new JavaStructureErrorValue(message, (IJavaValue)this.fEvaluationValue);
            }
            return this.fResult.getValue();
        }

        private void log(String[] messages) {
            if (JavaLogicalStructure.this.isContributed()) {
                StringBuffer log = new StringBuffer();
                int i = 0;
                while (i < messages.length) {
                    log.append(messages[i]).append('\n');
                    ++i;
                }
                JDIDebugPlugin.log((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 4, log.toString(), null));
            }
        }
    }
}

