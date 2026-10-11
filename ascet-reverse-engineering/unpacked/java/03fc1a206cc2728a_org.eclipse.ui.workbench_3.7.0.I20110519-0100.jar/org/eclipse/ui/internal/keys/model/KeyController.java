/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.CommandManager
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.Scheme
 *  org.eclipse.jface.bindings.keys.KeyBinding
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.swt.widgets.FileDialog
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.keys.model;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Map;
import java.util.ResourceBundle;
import org.eclipse.core.commands.CommandManager;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.jface.bindings.keys.KeyBinding;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.keys.NewKeysPreferenceMessages;
import org.eclipse.ui.internal.keys.model.BindingElement;
import org.eclipse.ui.internal.keys.model.BindingModel;
import org.eclipse.ui.internal.keys.model.ConflictModel;
import org.eclipse.ui.internal.keys.model.ContextElement;
import org.eclipse.ui.internal.keys.model.ContextModel;
import org.eclipse.ui.internal.keys.model.ModelElement;
import org.eclipse.ui.internal.keys.model.SchemeElement;
import org.eclipse.ui.internal.keys.model.SchemeModel;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.keys.IBindingService;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.statushandlers.StatusManager;

public class KeyController {
    private static final String DELIMITER = ",";
    private static final String ESCAPED_QUOTE = "\"";
    private static final String REPLACEMENT = "\"\"";
    private static final ResourceBundle RESOURCE_BUNDLE;
    private ListenerList eventManager = null;
    private BindingManager fBindingManager;
    private ContextModel contextModel;
    private SchemeModel fSchemeModel;
    private BindingModel bindingModel;
    private boolean notifying = true;
    private ConflictModel conflictModel;
    private IServiceLocator serviceLocator;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.KeysPreferencePage");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
    }

    private ListenerList getEventManager() {
        if (this.eventManager == null) {
            this.eventManager = new ListenerList(1);
        }
        return this.eventManager;
    }

    public void setNotifying(boolean b) {
        this.notifying = b;
    }

    public boolean isNotifying() {
        return this.notifying;
    }

    public void firePropertyChange(Object source, String propId, Object oldVal, Object newVal) {
        if (!this.isNotifying()) {
            return;
        }
        if (Util.equals(oldVal, newVal)) {
            return;
        }
        Object[] listeners = this.getEventManager().getListeners();
        PropertyChangeEvent event = new PropertyChangeEvent(source, propId, oldVal, newVal);
        int i = 0;
        while (i < listeners.length) {
            ((IPropertyChangeListener)listeners[i]).propertyChange(event);
            ++i;
        }
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.getEventManager().add((Object)listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.getEventManager().remove((Object)listener);
    }

    public void init(IServiceLocator locator) {
        this.getEventManager().clear();
        this.serviceLocator = locator;
        this.fBindingManager = KeyController.loadModelBackend(this.serviceLocator);
        this.contextModel = new ContextModel(this);
        this.contextModel.init(this.serviceLocator);
        this.fSchemeModel = new SchemeModel(this);
        this.fSchemeModel.init(this.fBindingManager);
        this.bindingModel = new BindingModel(this);
        this.bindingModel.init(this.serviceLocator, this.fBindingManager, this.contextModel);
        this.conflictModel = new ConflictModel(this);
        this.conflictModel.init(this.fBindingManager, this.bindingModel);
        this.addSetContextListener();
        this.addSetBindingListener();
        this.addSetConflictListener();
        this.addSetKeySequenceListener();
        this.addSetSchemeListener();
        this.addSetModelObjectListener();
    }

    private static BindingManager loadModelBackend(IServiceLocator locator) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IBindingService bindingService = (IBindingService)locator.getService(clazz);
        BindingManager bindingManager = new BindingManager(new ContextManager(), new CommandManager());
        Scheme[] definedSchemes = bindingService.getDefinedSchemes();
        try {
            Scheme modelActiveScheme = null;
            int i = 0;
            while (i < definedSchemes.length) {
                Scheme scheme = definedSchemes[i];
                Scheme copy = bindingManager.getScheme(scheme.getId());
                copy.define(scheme.getName(), scheme.getDescription(), scheme.getParentId());
                if (definedSchemes[i] == bindingService.getActiveScheme()) {
                    modelActiveScheme = copy;
                }
                ++i;
            }
            bindingManager.setActiveScheme(modelActiveScheme);
        }
        catch (NotDefinedException e) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Keys page found an undefined scheme", (Throwable)e));
        }
        bindingManager.setLocale(bindingService.getLocale());
        bindingManager.setPlatform(bindingService.getPlatform());
        bindingManager.setBindings(bindingService.getBindings());
        return bindingManager;
    }

    public ContextModel getContextModel() {
        return this.contextModel;
    }

    public SchemeModel getSchemeModel() {
        return this.fSchemeModel;
    }

    public BindingModel getBindingModel() {
        return this.bindingModel;
    }

    public ConflictModel getConflictModel() {
        return this.conflictModel;
    }

    private void addSetContextListener() {
        this.addPropertyChangeListener(new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getSource() == KeyController.this.contextModel && "selectedElement".equals(event.getProperty())) {
                    KeyController.this.updateBindingContext((ContextElement)event.getNewValue());
                }
            }
        });
    }

    private void addSetBindingListener() {
        this.addPropertyChangeListener(new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getSource() == KeyController.this.bindingModel && "selectedElement".equals(event.getProperty())) {
                    BindingElement binding = (BindingElement)event.getNewValue();
                    if (binding == null) {
                        KeyController.this.conflictModel.setSelectedElement(null);
                        return;
                    }
                    KeyController.this.conflictModel.setSelectedElement(binding);
                    ContextElement context = binding.getContext();
                    if (context != null) {
                        KeyController.this.contextModel.setSelectedElement(context);
                    }
                }
            }
        });
    }

    private void addSetConflictListener() {
        this.addPropertyChangeListener(new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getSource() == KeyController.this.conflictModel && "selectedElement".equals(event.getProperty()) && event.getNewValue() != null) {
                    KeyController.this.bindingModel.setSelectedElement((ModelElement)event.getNewValue());
                }
            }
        });
    }

    private void addSetKeySequenceListener() {
        this.addPropertyChangeListener(new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if ("trigger".equals(event.getProperty())) {
                    KeyController.this.updateTrigger((BindingElement)event.getSource(), (KeySequence)event.getOldValue(), (KeySequence)event.getNewValue());
                }
            }
        });
    }

    private void addSetModelObjectListener() {
        this.addPropertyChangeListener(new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getSource() instanceof BindingElement && "modelObject".equals(event.getProperty()) && event.getNewValue() != null) {
                    BindingElement element = (BindingElement)event.getSource();
                    Object oldValue = event.getOldValue();
                    Object newValue = event.getNewValue();
                    if (oldValue instanceof Binding && newValue instanceof Binding) {
                        KeyController.this.conflictModel.updateConflictsFor(element, ((Binding)oldValue).getTriggerSequence(), ((Binding)newValue).getTriggerSequence(), false);
                    } else {
                        KeyController.this.conflictModel.updateConflictsFor(element, false);
                    }
                    ContextElement context = element.getContext();
                    if (context != null) {
                        KeyController.this.contextModel.setSelectedElement(context);
                    }
                }
            }
        });
    }

    private void addSetSchemeListener() {
        this.addPropertyChangeListener(new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getSource() == KeyController.this.fSchemeModel && "selectedElement".equals(event.getProperty())) {
                    KeyController.this.changeScheme((SchemeElement)event.getOldValue(), (SchemeElement)event.getNewValue());
                }
            }
        });
    }

    protected void changeScheme(SchemeElement oldScheme, SchemeElement newScheme) {
        if (newScheme == null || newScheme.getModelObject() == this.fBindingManager.getActiveScheme()) {
            return;
        }
        try {
            this.fBindingManager.setActiveScheme((Scheme)newScheme.getModelObject());
            this.bindingModel.refresh(this.contextModel);
            this.bindingModel.setSelectedElement(null);
        }
        catch (NotDefinedException e) {
            e.printStackTrace();
        }
    }

    private void updateBindingContext(ContextElement context) {
        KeyBinding keyBinding;
        if (context == null) {
            return;
        }
        BindingElement activeBinding = (BindingElement)this.bindingModel.getSelectedElement();
        if (activeBinding == null) {
            return;
        }
        String activeSchemeId = this.fSchemeModel.getSelectedElement().getId();
        Object obj = activeBinding.getModelObject();
        if (obj instanceof KeyBinding && !(keyBinding = (KeyBinding)obj).getContextId().equals(context.getId())) {
            KeyBinding binding = new KeyBinding(keyBinding.getKeySequence(), keyBinding.getParameterizedCommand(), activeSchemeId, context.getId(), null, null, null, 1);
            if (keyBinding.getType() == 1) {
                this.fBindingManager.removeBinding((Binding)keyBinding);
            } else {
                this.fBindingManager.addBinding((Binding)new KeyBinding(keyBinding.getKeySequence(), null, keyBinding.getSchemeId(), keyBinding.getContextId(), null, null, null, 1));
            }
            this.bindingModel.getBindingToElement().remove(activeBinding.getModelObject());
            this.fBindingManager.addBinding((Binding)binding);
            activeBinding.fill(binding, this.contextModel);
            this.bindingModel.getBindingToElement().put(binding, activeBinding);
        }
    }

    public void updateTrigger(BindingElement activeBinding, KeySequence oldSequence, KeySequence keySequence) {
        if (activeBinding == null) {
            return;
        }
        Object obj = activeBinding.getModelObject();
        if (obj instanceof KeyBinding) {
            KeyBinding keyBinding = (KeyBinding)obj;
            if (!keyBinding.getKeySequence().equals((Object)keySequence)) {
                if (keySequence != null && !keySequence.isEmpty()) {
                    String activeSchemeId = this.fSchemeModel.getSelectedElement().getId();
                    ModelElement selectedElement = this.contextModel.getSelectedElement();
                    String activeContextId = selectedElement == null ? "org.eclipse.ui.contexts.window" : selectedElement.getId();
                    KeyBinding binding = new KeyBinding(keySequence, keyBinding.getParameterizedCommand(), activeSchemeId, activeContextId, null, null, null, 1);
                    Map bindingToElement = this.bindingModel.getBindingToElement();
                    bindingToElement.remove(keyBinding);
                    if (keyBinding.getType() == 1) {
                        this.fBindingManager.removeBinding((Binding)keyBinding);
                    } else {
                        this.fBindingManager.addBinding((Binding)new KeyBinding(keyBinding.getKeySequence(), null, keyBinding.getSchemeId(), keyBinding.getContextId(), null, null, null, 1));
                    }
                    this.fBindingManager.addBinding((Binding)binding);
                    activeBinding.fill(binding, this.contextModel);
                    this.bindingModel.getBindingToElement().put(binding, activeBinding);
                    Object[] keys = bindingToElement.keySet().toArray();
                    int i = 0;
                    while (i < keys.length) {
                        Binding bindingKey = (Binding)keys[i];
                        if (oldSequence.equals((Object)bindingKey.getTriggerSequence()) && bindingKey.getType() == 0) {
                            BindingElement be = (BindingElement)bindingToElement.get(bindingKey);
                            this.bindingModel.remove(be);
                        }
                        ++i;
                    }
                    this.bindingModel.setSelectedElement(activeBinding);
                } else {
                    this.bindingModel.getBindingToElement().remove(keyBinding);
                    if (keyBinding.getType() == 1) {
                        this.fBindingManager.removeBinding((Binding)keyBinding);
                    } else {
                        this.fBindingManager.addBinding((Binding)new KeyBinding(keyBinding.getKeySequence(), null, keyBinding.getSchemeId(), keyBinding.getContextId(), null, null, null, 1));
                    }
                    activeBinding.fill(keyBinding.getParameterizedCommand());
                }
            }
        } else if (obj instanceof ParameterizedCommand) {
            ParameterizedCommand cmd = (ParameterizedCommand)obj;
            if (keySequence != null && !keySequence.isEmpty()) {
                String activeSchemeId = this.fSchemeModel.getSelectedElement().getId();
                ModelElement selectedElement = this.contextModel.getSelectedElement();
                String activeContextId = selectedElement == null ? "org.eclipse.ui.contexts.window" : selectedElement.getId();
                KeyBinding binding = new KeyBinding(keySequence, cmd, activeSchemeId, activeContextId, null, null, null, 1);
                this.fBindingManager.addBinding((Binding)binding);
                activeBinding.fill(binding, this.contextModel);
                this.bindingModel.getBindingToElement().put(binding, activeBinding);
            }
        }
    }

    public void saveBindings(IBindingService bindingService) {
        try {
            bindingService.savePreferences(this.fBindingManager.getActiveScheme(), this.fBindingManager.getBindings());
        }
        catch (IOException e) {
            this.logPreferenceStoreException(e);
        }
    }

    private final void logPreferenceStoreException(Throwable exception) {
        String message = NewKeysPreferenceMessages.PreferenceStoreError_Message;
        String exceptionMessage = exception.getMessage();
        if (exceptionMessage == null) {
            exceptionMessage = message;
        }
        Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, exceptionMessage, exception);
        WorkbenchPlugin.log(message, (IStatus)status);
        StatusUtil.handleStatus(message, exception, 2);
    }

    public void filterContexts(boolean actionSets, boolean internal, boolean workbenchMenu) {
        this.contextModel.filterContexts(actionSets, internal, workbenchMenu);
    }

    public void setDefaultBindings(IBindingService bindingService) {
        String defaultSchemeId = bindingService.getDefaultSchemeId();
        Scheme defaultScheme = this.fBindingManager.getScheme(defaultSchemeId);
        try {
            this.fBindingManager.setActiveScheme(defaultScheme);
        }
        catch (NotDefinedException notDefinedException) {}
        Binding[] bindings = this.fBindingManager.getBindings();
        int i = 0;
        while (i < bindings.length) {
            if (bindings[i].getType() == 1) {
                this.fBindingManager.removeBinding(bindings[i]);
            }
            ++i;
        }
        this.bindingModel.refresh(this.contextModel);
        this.saveBindings(bindingService);
    }

    public void exportCSV(Shell shell) {
        FileDialog fileDialog = new FileDialog(shell, 0x10002000);
        fileDialog.setFilterExtensions(new String[]{"*.csv"});
        fileDialog.setFilterNames(new String[]{Util.translateString(RESOURCE_BUNDLE, "csvFilterName")});
        fileDialog.setOverwrite(true);
        final String filePath = fileDialog.open();
        if (filePath == null) {
            return;
        }
        SafeRunnable runnable = new SafeRunnable(){

            public final void run() throws IOException {
                Writer fileWriter = null;
                try {
                    fileWriter = new BufferedWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(filePath), "UTF-8"));
                    Object[] bindingElements = KeyController.this.bindingModel.getBindings().toArray();
                    int i = 0;
                    while (i < bindingElements.length) {
                        BindingElement be = (BindingElement)bindingElements[i];
                        if (be.getTrigger() != null && !be.getTrigger().isEmpty() && be.getContext() != null && be.getContext().getName() != null) {
                            StringBuffer buffer = new StringBuffer();
                            buffer.append(KeyController.ESCAPED_QUOTE + Util.replaceAll(be.getCategory(), KeyController.ESCAPED_QUOTE, KeyController.REPLACEMENT) + KeyController.ESCAPED_QUOTE + KeyController.DELIMITER);
                            buffer.append(KeyController.ESCAPED_QUOTE + be.getName() + KeyController.ESCAPED_QUOTE + KeyController.DELIMITER);
                            buffer.append(KeyController.ESCAPED_QUOTE + be.getTrigger().format() + KeyController.ESCAPED_QUOTE + KeyController.DELIMITER);
                            buffer.append(KeyController.ESCAPED_QUOTE + be.getContext().getName() + KeyController.ESCAPED_QUOTE);
                            buffer.append(System.getProperty("line.separator"));
                            fileWriter.write(buffer.toString());
                        }
                        ++i;
                    }
                }
                catch (Throwable throwable) {
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                if (fileWriter != null) {
                    try {
                        fileWriter.close();
                    }
                    catch (IOException iOException) {}
                }
            }
        };
        SafeRunner.run((ISafeRunnable)runnable);
    }
}

