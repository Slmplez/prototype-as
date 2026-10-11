/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.DecorationContext
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IColorDecorator
 *  org.eclipse.jface.viewers.IDecorationContext
 *  org.eclipse.jface.viewers.IDelayedLabelDecorator
 *  org.eclipse.jface.viewers.IFontDecorator
 *  org.eclipse.jface.viewers.ILabelDecorator
 *  org.eclipse.jface.viewers.ILabelProviderListener
 *  org.eclipse.jface.viewers.ILightweightLabelDecorator
 *  org.eclipse.jface.viewers.LabelDecorator
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.decorators;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.DecorationContext;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IColorDecorator;
import org.eclipse.jface.viewers.IDecorationContext;
import org.eclipse.jface.viewers.IDelayedLabelDecorator;
import org.eclipse.jface.viewers.IFontDecorator;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.ILightweightLabelDecorator;
import org.eclipse.jface.viewers.LabelDecorator;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IDecoratorManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.LegacyResourceSupport;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.decorators.DecorationScheduler;
import org.eclipse.ui.internal.decorators.DecoratorDefinition;
import org.eclipse.ui.internal.decorators.DecoratorRegistryReader;
import org.eclipse.ui.internal.decorators.FullDecoratorDefinition;
import org.eclipse.ui.internal.decorators.FullImageDecoratorRunnable;
import org.eclipse.ui.internal.decorators.FullTextDecoratorRunnable;
import org.eclipse.ui.internal.decorators.LightweightDecoratorDefinition;
import org.eclipse.ui.internal.decorators.LightweightDecoratorManager;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.progress.WorkbenchJob;

public class DecoratorManager
implements ILabelProviderListener,
IDecoratorManager,
IExtensionChangeHandler {
    private static String EXTENSIONPOINT_UNIQUE_ID = String.valueOf(WorkbenchPlugin.PI_WORKBENCH) + "." + "decorators";
    public static final Object FAMILY_DECORATE = new Object();
    private DecorationScheduler scheduler;
    private LightweightDecoratorManager lightweightManager;
    private ListenerList listeners = new ListenerList();
    private FullDecoratorDefinition[] fullDefinitions;
    private FullTextDecoratorRunnable fullTextRunnable = new FullTextDecoratorRunnable();
    private FullImageDecoratorRunnable fullImageRunnable = new FullImageDecoratorRunnable();
    private static final FullDecoratorDefinition[] EMPTY_FULL_DEF = new FullDecoratorDefinition[0];
    private final String PREFERENCE_SEPARATOR = ",";
    private final String VALUE_SEPARATOR = ":";
    private final String P_TRUE = "true";
    private final String P_FALSE = "false";
    private LocalResourceManager resourceManager;

    public DecoratorManager() {
        this.scheduler = new DecorationScheduler(this);
        IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
        tracker.registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPointFilter()));
        this.resourceManager = null;
    }

    private void initializeDecoratorDefinitions() {
        DecoratorRegistryReader reader = new DecoratorRegistryReader();
        Collection values = reader.readRegistry(Platform.getExtensionRegistry());
        ArrayList<DecoratorDefinition> full = new ArrayList<DecoratorDefinition>();
        ArrayList<DecoratorDefinition> lightweight = new ArrayList<DecoratorDefinition>();
        Iterator allDefinitions = values.iterator();
        IExtensionTracker configurationElementTracker = PlatformUI.getWorkbench().getExtensionTracker();
        while (allDefinitions.hasNext()) {
            DecoratorDefinition nextDefinition = (DecoratorDefinition)allDefinitions.next();
            if (nextDefinition.isFull()) {
                full.add(nextDefinition);
            } else {
                lightweight.add(nextDefinition);
            }
            configurationElementTracker.registerObject(nextDefinition.getConfigurationElement().getDeclaringExtension(), (Object)nextDefinition, 2);
        }
        this.fullDefinitions = new FullDecoratorDefinition[full.size()];
        full.toArray(this.fullDefinitions);
        LightweightDecoratorDefinition[] lightweightDefinitions = new LightweightDecoratorDefinition[lightweight.size()];
        lightweight.toArray(lightweightDefinitions);
        this.lightweightManager = new LightweightDecoratorManager(lightweightDefinitions);
        this.applyDecoratorsPreference();
    }

    public void addDecorator(DecoratorDefinition definition) {
        if (definition.isFull()) {
            if (this.getFullDecoratorDefinition(definition.getId()) == null) {
                FullDecoratorDefinition[] oldDefs = this.getFullDefinitions();
                this.fullDefinitions = new FullDecoratorDefinition[this.fullDefinitions.length + 1];
                System.arraycopy(oldDefs, 0, this.fullDefinitions, 0, oldDefs.length);
                this.fullDefinitions[oldDefs.length] = (FullDecoratorDefinition)definition;
                this.clearCaches();
                this.updateForEnablementChange();
            }
        } else if (this.getLightweightManager().addDecorator((LightweightDecoratorDefinition)definition)) {
            this.clearCaches();
            this.updateForEnablementChange();
        }
        ((Workbench)PlatformUI.getWorkbench()).getExtensionTracker().registerObject(definition.getConfigurationElement().getDeclaringExtension(), (Object)definition, 2);
    }

    static Collection getDecoratorsFor(Object element, DecoratorDefinition[] enabledDefinitions) {
        ArrayList<DecoratorDefinition> decorators = new ArrayList<DecoratorDefinition>();
        int i = 0;
        while (i < enabledDefinitions.length) {
            if (enabledDefinitions[i].isEnabledFor(element)) {
                decorators.add(enabledDefinitions[i]);
            }
            ++i;
        }
        return decorators;
    }

    public void addListener(ILabelProviderListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removeListener(ILabelProviderListener listener) {
        this.listeners.remove((Object)listener);
        this.scheduler.listenerRemoved(listener);
    }

    ILabelProviderListener[] getListeners() {
        Object[] array = this.listeners.getListeners();
        ILabelProviderListener[] listenerArray = new ILabelProviderListener[array.length];
        System.arraycopy(array, 0, listenerArray, 0, listenerArray.length);
        return listenerArray;
    }

    void fireListener(final LabelProviderChangedEvent event, final ILabelProviderListener listener) {
        SafeRunner.run((ISafeRunnable)new SafeRunnable(){

            public void run() {
                listener.labelProviderChanged(event);
            }
        });
    }

    void fireListeners(final LabelProviderChangedEvent event) {
        Object[] array = this.listeners.getListeners();
        int i = 0;
        while (i < array.length) {
            final ILabelProviderListener l = (ILabelProviderListener)array[i];
            SafeRunner.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.labelProviderChanged(event);
                }
            });
            ++i;
        }
    }

    void fireListenersInUIThread(final LabelProviderChangedEvent event) {
        if (!PlatformUI.isWorkbenchRunning()) {
            return;
        }
        if (Thread.currentThread() == PlatformUI.getWorkbench().getDisplay().getThread()) {
            this.fireListeners(event);
            return;
        }
        WorkbenchJob updateJob = new WorkbenchJob(WorkbenchMessages.DecorationScheduler_UpdateJobName){

            public IStatus runInUIThread(IProgressMonitor monitor) {
                DecoratorManager.this.fireListeners(event);
                return Status.OK_STATUS;
            }

            public boolean belongsTo(Object family) {
                return FAMILY_DECORATE == family;
            }
        };
        updateJob.setSystem(true);
        updateJob.schedule();
    }

    public String decorateText(String text, Object element, IDecorationContext context) {
        String newResult;
        Object adapted = this.getResourceAdapter(element);
        String result = this.scheduler.decorateWithText(text, element, adapted, context);
        FullDecoratorDefinition[] decorators = this.getDecoratorsFor(element);
        int i = 0;
        while (i < decorators.length) {
            if (decorators[i].isEnabledFor(element) && (newResult = this.safeDecorateText(element, result, decorators[i])) != null) {
                result = newResult;
            }
            ++i;
        }
        if (adapted != null) {
            decorators = this.getDecoratorsFor(adapted);
            i = 0;
            while (i < decorators.length) {
                if (decorators[i].isAdaptable() && decorators[i].isEnabledFor(adapted) && (newResult = this.safeDecorateText(adapted, result, decorators[i])) != null) {
                    result = newResult;
                }
                ++i;
            }
        }
        return result;
    }

    public String decorateText(String text, Object element) {
        return this.decorateText(text, element, DecorationContext.DEFAULT_CONTEXT);
    }

    private String safeDecorateText(Object element, String start, FullDecoratorDefinition decorator) {
        this.fullTextRunnable.setValues(start, element, decorator);
        SafeRunner.run((ISafeRunnable)this.fullTextRunnable);
        String newResult = this.fullTextRunnable.getResult();
        return newResult;
    }

    public Image decorateImage(Image image, Object element, IDecorationContext context, ResourceManager localResourceManager) {
        Image newResult;
        Object adapted = this.getResourceAdapter(element);
        Image result = this.scheduler.decorateWithOverlays(image, element, adapted, context, localResourceManager);
        FullDecoratorDefinition[] decorators = this.getDecoratorsFor(element);
        int i = 0;
        while (i < decorators.length) {
            if (decorators[i].isEnabledFor(element) && (newResult = this.safeDecorateImage(element, result, decorators[i])) != null) {
                result = newResult;
            }
            ++i;
        }
        if (adapted != null) {
            decorators = this.getDecoratorsFor(adapted);
            i = 0;
            while (i < decorators.length) {
                if (decorators[i].isAdaptable() && decorators[i].isEnabledFor(adapted) && (newResult = this.safeDecorateImage(adapted, result, decorators[i])) != null) {
                    result = newResult;
                }
                ++i;
            }
        }
        return result;
    }

    public Image decorateImage(Image image, Object element) {
        return this.decorateImage(image, element, DecorationContext.DEFAULT_CONTEXT, this.getResourceManager());
    }

    private Image safeDecorateImage(Object element, Image start, FullDecoratorDefinition decorator) {
        this.fullImageRunnable.setValues(start, element, decorator);
        SafeRunner.run((ISafeRunnable)this.fullImageRunnable);
        Image newResult = this.fullImageRunnable.getResult();
        return newResult;
    }

    private Object getResourceAdapter(Object element) {
        Object adapted = LegacyResourceSupport.getAdaptedContributorResource(element);
        if (adapted != element) {
            return adapted;
        }
        return null;
    }

    public boolean isLabelProperty(Object element, String property) {
        return this.isLabelProperty(element, property, true);
    }

    public boolean isLabelProperty(Object element, String property, boolean checkAdapted) {
        boolean fullCheck = this.isLabelProperty(element, property, this.getDecoratorsFor(element));
        if (fullCheck) {
            return fullCheck;
        }
        boolean lightweightCheck = this.isLabelProperty(element, property, this.getLightweightManager().getDecoratorsFor(element));
        if (lightweightCheck) {
            return true;
        }
        if (checkAdapted) {
            Object adapted = this.getResourceAdapter(element);
            if (adapted == null || adapted == element) {
                return false;
            }
            fullCheck = this.isLabelProperty(adapted, property, this.getDecoratorsFor(adapted));
            if (fullCheck) {
                return fullCheck;
            }
            return this.isLabelProperty(adapted, property, this.lightweightManager.getDecoratorsFor(adapted));
        }
        return false;
    }

    private boolean isLabelProperty(Object element, String property, DecoratorDefinition[] decorators) {
        int i = 0;
        while (i < decorators.length) {
            if (decorators[i].isEnabledFor(element) && decorators[i].isLabelProperty(element, property)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private FullDecoratorDefinition[] enabledFullDefinitions() {
        FullDecoratorDefinition[] full = this.getFullDefinitions();
        if (full.length == 0) {
            return full;
        }
        ArrayList<FullDecoratorDefinition> result = new ArrayList<FullDecoratorDefinition>();
        int i = 0;
        while (i < full.length) {
            if (full[i].isEnabled()) {
                result.add(full[i]);
            }
            ++i;
        }
        FullDecoratorDefinition[] returnArray = new FullDecoratorDefinition[result.size()];
        result.toArray(returnArray);
        return returnArray;
    }

    public void dispose() {
    }

    public void clearCaches() {
        this.getLightweightManager().reset();
        this.fullTextRunnable.clearReferences();
        this.fullImageRunnable.clearReferences();
    }

    public void updateForEnablementChange() {
        this.scheduler.clearResults();
        this.fireListenersInUIThread(new LabelProviderChangedEvent((IBaseLabelProvider)this));
        this.writeDecoratorsPreference();
    }

    public DecoratorDefinition[] getAllDecoratorDefinitions() {
        LightweightDecoratorDefinition[] lightweightDefinitions = this.getLightweightManager().getDefinitions();
        DecoratorDefinition[] returnValue = new DecoratorDefinition[this.fullDefinitions.length + lightweightDefinitions.length];
        System.arraycopy(this.fullDefinitions, 0, returnValue, 0, this.fullDefinitions.length);
        System.arraycopy(lightweightDefinitions, 0, returnValue, this.fullDefinitions.length, lightweightDefinitions.length);
        return returnValue;
    }

    public void labelProviderChanged(LabelProviderChangedEvent event) {
        Object[] elements = event.getElements();
        this.scheduler.clearResults();
        if (elements == null) {
            this.fireListeners(event);
        } else {
            int i = 0;
            while (i < elements.length) {
                Object adapted = this.getResourceAdapter(elements[i]);
                this.scheduler.queueForDecoration(elements[i], adapted, true, null, DecorationContext.DEFAULT_CONTEXT);
                ++i;
            }
        }
    }

    private void writeDecoratorsPreference() {
        StringBuffer enabledIds = new StringBuffer();
        this.writeDecoratorsPreference(enabledIds, this.getFullDefinitions());
        this.writeDecoratorsPreference(enabledIds, this.getLightweightManager().getDefinitions());
        WorkbenchPlugin.getDefault().getPreferenceStore().setValue("ENABLED_DECORATORS", enabledIds.toString());
        PrefUtil.savePrefs();
    }

    private void writeDecoratorsPreference(StringBuffer enabledIds, DecoratorDefinition[] definitions) {
        int i = 0;
        while (i < definitions.length) {
            enabledIds.append(definitions[i].getId());
            enabledIds.append(":");
            if (definitions[i].isEnabled()) {
                enabledIds.append("true");
            } else {
                enabledIds.append("false");
            }
            enabledIds.append(",");
            ++i;
        }
    }

    public void applyDecoratorsPreference() {
        String preferenceValue = WorkbenchPlugin.getDefault().getPreferenceStore().getString("ENABLED_DECORATORS");
        StringTokenizer tokenizer = new StringTokenizer(preferenceValue, ",");
        HashSet<String> enabledIds = new HashSet<String>();
        HashSet<String> disabledIds = new HashSet<String>();
        while (tokenizer.hasMoreTokens()) {
            String nextValuePair = tokenizer.nextToken();
            String id = nextValuePair.substring(0, nextValuePair.indexOf(":"));
            if (nextValuePair.endsWith("true")) {
                enabledIds.add(id);
                continue;
            }
            disabledIds.add(id);
        }
        FullDecoratorDefinition[] full = this.getFullDefinitions();
        int i = 0;
        while (i < full.length) {
            String id = full[i].getId();
            if (enabledIds.contains(id)) {
                full[i].setEnabled(true);
            } else if (disabledIds.contains(id)) {
                full[i].setEnabled(false);
            }
            ++i;
        }
        LightweightDecoratorDefinition[] lightweightDefinitions = this.getLightweightManager().getDefinitions();
        int i2 = 0;
        while (i2 < lightweightDefinitions.length) {
            String id = lightweightDefinitions[i2].getId();
            if (enabledIds.contains(id)) {
                lightweightDefinitions[i2].setEnabled(true);
            } else if (disabledIds.contains(id)) {
                lightweightDefinitions[i2].setEnabled(false);
            }
            ++i2;
        }
    }

    public void shutdown() {
        FullDecoratorDefinition[] full = this.getFullDefinitions();
        int i = 0;
        while (i < full.length) {
            if (full[i].isEnabled()) {
                full[i].setEnabled(false);
            }
            ++i;
        }
        if (this.lightweightManager != null) {
            this.getLightweightManager().shutdown();
        }
        this.scheduler.shutdown();
        this.dispose();
    }

    public boolean getEnabled(String decoratorId) {
        DecoratorDefinition definition = this.getDecoratorDefinition(decoratorId);
        if (definition == null) {
            return false;
        }
        return definition.isEnabled();
    }

    public ILabelDecorator getLabelDecorator() {
        return new ManagedWorkbenchLabelDecorator(this);
    }

    public ResourceManager getResourceManager() {
        if (this.resourceManager == null) {
            this.resourceManager = new LocalResourceManager(JFaceResources.getResources((Display)PlatformUI.getWorkbench().getDisplay()));
        }
        return this.resourceManager;
    }

    public void setEnabled(String decoratorId, boolean enabled) {
        DecoratorDefinition definition = this.getDecoratorDefinition(decoratorId);
        if (definition != null) {
            definition.setEnabled(enabled);
            this.clearCaches();
            this.updateForEnablementChange();
        }
    }

    public IBaseLabelProvider getBaseLabelProvider(String decoratorId) {
        ILabelDecorator fullProvider = this.getLabelDecorator(decoratorId);
        if (fullProvider == null) {
            return this.getLightweightLabelDecorator(decoratorId);
        }
        return fullProvider;
    }

    public ILabelDecorator getLabelDecorator(String decoratorId) {
        FullDecoratorDefinition definition = this.getFullDecoratorDefinition(decoratorId);
        if (definition != null && definition.isEnabled()) {
            ILabelDecorator result = definition.getDecorator();
            if (result == null) {
                try {
                    result = definition.internalGetDecorator();
                }
                catch (CoreException e) {
                    WorkbenchPlugin.log(e);
                }
            }
            return result;
        }
        return null;
    }

    public ILightweightLabelDecorator getLightweightLabelDecorator(String decoratorId) {
        LightweightDecoratorDefinition definition = this.getLightweightManager().getDecoratorDefinition(decoratorId);
        if (definition != null && definition.isEnabled()) {
            return definition.getDecorator();
        }
        return null;
    }

    private DecoratorDefinition getDecoratorDefinition(String decoratorId) {
        FullDecoratorDefinition returnValue = this.getFullDecoratorDefinition(decoratorId);
        if (returnValue == null) {
            return this.getLightweightManager().getDecoratorDefinition(decoratorId);
        }
        return returnValue;
    }

    private FullDecoratorDefinition getFullDecoratorDefinition(String decoratorId) {
        int idx = this.getFullDecoratorDefinitionIdx(decoratorId);
        if (idx != -1) {
            return this.getFullDefinitions()[idx];
        }
        return null;
    }

    private int getFullDecoratorDefinitionIdx(String decoratorId) {
        FullDecoratorDefinition[] full = this.getFullDefinitions();
        int i = 0;
        while (i < full.length) {
            if (full[i].getId().equals(decoratorId)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    private FullDecoratorDefinition[] getDecoratorsFor(Object element) {
        if (element == null) {
            return EMPTY_FULL_DEF;
        }
        Collection decorators = DecoratorManager.getDecoratorsFor(element, this.enabledFullDefinitions());
        FullDecoratorDefinition[] decoratorArray = EMPTY_FULL_DEF;
        if (decorators.size() > 0) {
            decoratorArray = new FullDecoratorDefinition[decorators.size()];
            decorators.toArray(decoratorArray);
        }
        return decoratorArray;
    }

    public LightweightDecoratorManager getLightweightManager() {
        if (this.lightweightManager == null) {
            this.initializeDecoratorDefinitions();
        }
        return this.lightweightManager;
    }

    public void update(String decoratorId) {
        IBaseLabelProvider provider = this.getBaseLabelProvider(decoratorId);
        if (provider != null) {
            this.scheduler.clearResults();
            this.fireListeners(new LabelProviderChangedEvent(provider));
        }
    }

    public boolean prepareDecoration(Object element, String originalText, IDecorationContext context) {
        if (this.scheduler.isDecorationReady(element, context) || !this.getLightweightManager().hasEnabledDefinitions()) {
            return true;
        }
        boolean force = true;
        if (originalText == null || originalText.length() == 0) {
            force = false;
        }
        this.scheduler.queueForDecoration(element, this.getResourceAdapter(element), force, originalText, context);
        return !force;
    }

    public boolean prepareDecoration(Object element, String originalText) {
        return this.prepareDecoration(element, originalText, DecorationContext.DEFAULT_CONTEXT);
    }

    public Font decorateFont(Object element) {
        return this.scheduler.getFont(element, this.getResourceAdapter(element));
    }

    public Color decorateBackground(Object element) {
        return this.scheduler.getBackgroundColor(element, this.getResourceAdapter(element));
    }

    public Color decorateForeground(Object element) {
        return this.scheduler.getForegroundColor(element, this.getResourceAdapter(element));
    }

    private FullDecoratorDefinition[] getFullDefinitions() {
        if (this.fullDefinitions == null) {
            this.initializeDecoratorDefinitions();
        }
        return this.fullDefinitions;
    }

    private IExtensionPoint getExtensionPointFilter() {
        return Platform.getExtensionRegistry().getExtensionPoint(EXTENSIONPOINT_UNIQUE_ID);
    }

    public void addExtension(IExtensionTracker tracker, IExtension addedExtension) {
        IConfigurationElement[] addedElements = addedExtension.getConfigurationElements();
        int i = 0;
        while (i < addedElements.length) {
            DecoratorRegistryReader reader = new DecoratorRegistryReader();
            reader.readElement(addedElements[i]);
            Iterator j = reader.getValues().iterator();
            while (j.hasNext()) {
                this.addDecorator((DecoratorDefinition)j.next());
            }
            ++i;
        }
    }

    public void removeExtension(IExtension source, Object[] objects) {
        boolean shouldClear = false;
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof DecoratorDefinition) {
                DecoratorDefinition definition = (DecoratorDefinition)objects[i];
                if (definition.isFull()) {
                    int idx = this.getFullDecoratorDefinitionIdx(definition.getId());
                    if (idx != -1) {
                        Object[] oldDefs = this.getFullDefinitions();
                        this.fullDefinitions = new FullDecoratorDefinition[this.fullDefinitions.length - 1];
                        Util.arrayCopyWithRemoval(oldDefs, this.fullDefinitions, idx);
                        shouldClear = true;
                    }
                } else {
                    shouldClear |= this.getLightweightManager().removeDecorator((LightweightDecoratorDefinition)definition);
                }
            }
            ++i;
        }
        if (shouldClear) {
            this.clearCaches();
            this.updateForEnablementChange();
        }
    }

    private static class ManagedWorkbenchLabelDecorator
    extends LabelDecorator
    implements ILabelDecorator,
    IDelayedLabelDecorator,
    IColorDecorator,
    IFontDecorator {
        private final DecoratorManager decoratorManager;
        private LocalResourceManager resourceManager;

        public ManagedWorkbenchLabelDecorator(DecoratorManager decoratorManager) {
            this.decoratorManager = decoratorManager;
            this.resourceManager = null;
        }

        private LocalResourceManager getResourceManager() {
            if (this.resourceManager == null) {
                this.resourceManager = new LocalResourceManager(this.decoratorManager.getResourceManager());
            }
            return this.resourceManager;
        }

        public Image decorateImage(Image image, Object element, IDecorationContext context) {
            return this.decoratorManager.decorateImage(image, element, context, (ResourceManager)this.getResourceManager());
        }

        public String decorateText(String text, Object element, IDecorationContext context) {
            return this.decoratorManager.decorateText(text, element, context);
        }

        public boolean prepareDecoration(Object element, String originalText, IDecorationContext context) {
            return this.decoratorManager.prepareDecoration(element, originalText, context);
        }

        public boolean prepareDecoration(Object element, String originalText) {
            return this.prepareDecoration(element, originalText, DecorationContext.DEFAULT_CONTEXT);
        }

        public Font decorateFont(Object element) {
            return this.decoratorManager.decorateFont(element);
        }

        public Color decorateBackground(Object element) {
            return this.decoratorManager.decorateBackground(element);
        }

        public Color decorateForeground(Object element) {
            return this.decoratorManager.decorateForeground(element);
        }

        public Image decorateImage(Image image, Object element) {
            return this.decorateImage(image, element, DecorationContext.DEFAULT_CONTEXT);
        }

        public String decorateText(String text, Object element) {
            return this.decorateText(text, element, DecorationContext.DEFAULT_CONTEXT);
        }

        public void addListener(ILabelProviderListener listener) {
            this.decoratorManager.addListener(listener);
        }

        public void dispose() {
            if (this.resourceManager != null) {
                this.resourceManager.dispose();
                this.resourceManager = null;
            }
        }

        public boolean isLabelProperty(Object element, String property) {
            return this.decoratorManager.isLabelProperty(element, property);
        }

        public void removeListener(ILabelProviderListener listener) {
            this.decoratorManager.removeListener(listener);
        }
    }
}

