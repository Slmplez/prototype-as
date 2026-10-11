/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui.console;

import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleListener;
import org.eclipse.ui.internal.console.ConsoleMessages;

public abstract class AbstractConsole
implements IConsole {
    private ListenerList fListeners;
    private String fName = null;
    private ImageDescriptor fImageDescriptor = null;
    private String fType = null;

    public AbstractConsole(String name, ImageDescriptor imageDescriptor, boolean autoLifecycle) {
        this(name, null, imageDescriptor, autoLifecycle);
    }

    public AbstractConsole(String name, String type, ImageDescriptor imageDescriptor, boolean autoLifecycle) {
        this.setName(name);
        this.setType(type);
        this.setImageDescriptor(imageDescriptor);
        if (autoLifecycle) {
            ConsolePlugin.getDefault().getConsoleManager().addConsoleListener(new Lifecycle());
        }
    }

    public AbstractConsole(String name, ImageDescriptor imageDescriptor) {
        this(name, imageDescriptor, true);
    }

    public String getName() {
        return this.fName;
    }

    protected void setName(String name) {
        if (!name.equals(this.fName)) {
            String old = this.fName;
            this.fName = name;
            this.firePropertyChange(this, "org.eclipse.jface.text", old, name);
        }
    }

    public ImageDescriptor getImageDescriptor() {
        return this.fImageDescriptor;
    }

    protected void setImageDescriptor(ImageDescriptor imageDescriptor) {
        ImageDescriptor old = this.fImageDescriptor;
        this.fImageDescriptor = imageDescriptor;
        this.firePropertyChange(this, "org.eclipse.jface.image", old, imageDescriptor);
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        if (this.fListeners == null) {
            this.fListeners = new ListenerList();
        }
        this.fListeners.add((Object)listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        if (this.fListeners != null) {
            this.fListeners.remove((Object)listener);
        }
    }

    public void firePropertyChange(Object source, String property, Object oldValue, Object newValue) {
        if (this.fListeners == null) {
            return;
        }
        PropertyNotifier notifier = new PropertyNotifier();
        notifier.notify(new PropertyChangeEvent(source, property, oldValue, newValue));
    }

    public final void initialize() {
        this.init();
    }

    protected void init() {
    }

    public final void destroy() {
        this.dispose();
    }

    protected void dispose() {
    }

    public void activate() {
        ConsolePlugin.getDefault().getConsoleManager().showConsoleView(this);
    }

    protected void setType(String typeIdentifier) {
        this.fType = typeIdentifier;
    }

    public String getType() {
        return this.fType;
    }

    public String getHelpContextId() {
        return null;
    }

    class Lifecycle
    implements IConsoleListener {
        Lifecycle() {
        }

        public void consolesAdded(IConsole[] consoles) {
            int i = 0;
            while (i < consoles.length) {
                IConsole console = consoles[i];
                if (console == AbstractConsole.this) {
                    AbstractConsole.this.initialize();
                }
                ++i;
            }
        }

        public void consolesRemoved(IConsole[] consoles) {
            int i = 0;
            while (i < consoles.length) {
                IConsole console = consoles[i];
                if (console == AbstractConsole.this) {
                    ConsolePlugin.getDefault().getConsoleManager().removeConsoleListener(this);
                    AbstractConsole.this.destroy();
                }
                ++i;
            }
        }
    }

    class PropertyNotifier
    implements ISafeRunnable {
        private IPropertyChangeListener fListener;
        private PropertyChangeEvent fEvent;

        PropertyNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, ConsolePlugin.getUniqueIdentifier(), 120, ConsoleMessages.AbstractConsole_0, exception);
            ConsolePlugin.log((IStatus)status);
        }

        public void run() throws Exception {
            this.fListener.propertyChange(this.fEvent);
        }

        public void notify(PropertyChangeEvent event) {
            if (AbstractConsole.this.fListeners == null) {
                return;
            }
            this.fEvent = event;
            Object[] copiedListeners = AbstractConsole.this.fListeners.getListeners();
            int i = 0;
            while (i < copiedListeners.length) {
                this.fListener = (IPropertyChangeListener)copiedListeners[i];
                SafeRunner.run((ISafeRunnable)this);
                ++i;
            }
            this.fListener = null;
        }
    }
}

