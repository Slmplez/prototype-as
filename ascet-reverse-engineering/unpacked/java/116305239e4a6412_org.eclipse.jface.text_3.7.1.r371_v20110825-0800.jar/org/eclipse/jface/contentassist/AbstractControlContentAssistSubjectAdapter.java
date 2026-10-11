/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.fieldassist.ControlDecoration
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ILabelProviderListener
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.jface.contentassist;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.contentassist.IContentAssistSubjectControl;
import org.eclipse.jface.fieldassist.ControlDecoration;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.text.IEventConsumer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public abstract class AbstractControlContentAssistSubjectAdapter
implements IContentAssistSubjectControl {
    protected static final boolean DEBUG = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface.text/debug/ContentAssistSubjectAdapters"));
    private List fVerifyKeyListeners = new ArrayList(1);
    private Set fKeyListeners = new HashSet(1);
    private Listener fControlListener;
    private ILabelProvider fCueLabelProvider;
    private ControlDecoration fControlDecoration;
    private Image fCachedDefaultCueImage;
    static /* synthetic */ Class class$0;

    public abstract Control getControl();

    public void addKeyListener(KeyListener keyListener) {
        this.fKeyListeners.add(keyListener);
        if (DEBUG) {
            System.out.println("AbstractControlContentAssistSubjectAdapter#addKeyListener()");
        }
        this.installControlListener();
    }

    public void removeKeyListener(KeyListener keyListener) {
        boolean deleted = this.fKeyListeners.remove(keyListener);
        if (DEBUG) {
            if (!deleted) {
                System.out.println("removeKeyListener -> wasn't here");
            }
            System.out.println("AbstractControlContentAssistSubjectAdapter#removeKeyListener() -> " + this.fKeyListeners.size());
        }
        this.uninstallControlListener();
    }

    public boolean supportsVerifyKeyListener() {
        return true;
    }

    public boolean appendVerifyKeyListener(VerifyKeyListener verifyKeyListener) {
        this.fVerifyKeyListeners.add(verifyKeyListener);
        if (DEBUG) {
            System.out.println("AbstractControlContentAssistSubjectAdapter#appendVerifyKeyListener() -> " + this.fVerifyKeyListeners.size());
        }
        this.installControlListener();
        return true;
    }

    public boolean prependVerifyKeyListener(VerifyKeyListener verifyKeyListener) {
        this.fVerifyKeyListeners.add(0, verifyKeyListener);
        if (DEBUG) {
            System.out.println("AbstractControlContentAssistSubjectAdapter#prependVerifyKeyListener() -> " + this.fVerifyKeyListeners.size());
        }
        this.installControlListener();
        return true;
    }

    public void removeVerifyKeyListener(VerifyKeyListener verifyKeyListener) {
        this.fVerifyKeyListeners.remove(verifyKeyListener);
        if (DEBUG) {
            System.out.println("AbstractControlContentAssistSubjectAdapter#removeVerifyKeyListener() -> " + this.fVerifyKeyListeners.size());
        }
        this.uninstallControlListener();
    }

    public void setEventConsumer(IEventConsumer eventConsumer) {
        if (DEBUG) {
            System.out.println("AbstractControlContentAssistSubjectAdapter#setEventConsumer()");
        }
    }

    public String getLineDelimiter() {
        return System.getProperty("line.separator");
    }

    private void installControlListener() {
        if (DEBUG) {
            System.out.println("AbstractControlContentAssistSubjectAdapter#installControlListener() -> k: " + this.fKeyListeners.size() + ", v: " + this.fVerifyKeyListeners.size());
        }
        if (this.fControlListener != null) {
            return;
        }
        this.fControlListener = new Listener(){

            public void handleEvent(Event e) {
                if (!AbstractControlContentAssistSubjectAdapter.this.getControl().isFocusControl()) {
                    return;
                }
                VerifyEvent verifyEvent = new VerifyEvent(e);
                KeyEvent keyEvent = new KeyEvent(e);
                switch (e.type) {
                    case 31: {
                        if (DEBUG) {
                            this.dump("before traverse", e, verifyEvent);
                        }
                        verifyEvent.doit = true;
                        Iterator iter = AbstractControlContentAssistSubjectAdapter.this.fVerifyKeyListeners.iterator();
                        while (iter.hasNext()) {
                            ((VerifyKeyListener)iter.next()).verifyKey(verifyEvent);
                            if (!verifyEvent.doit) {
                                e.detail = 0;
                                e.doit = true;
                                if (DEBUG) {
                                    this.dump("traverse eaten by verify", e, verifyEvent);
                                }
                                return;
                            }
                            if (!DEBUG) continue;
                            this.dump("traverse OK", e, verifyEvent);
                        }
                        break;
                    }
                    case 1: {
                        Iterator iter = AbstractControlContentAssistSubjectAdapter.this.fVerifyKeyListeners.iterator();
                        while (iter.hasNext()) {
                            ((VerifyKeyListener)iter.next()).verifyKey(verifyEvent);
                            if (verifyEvent.doit) continue;
                            e.doit = verifyEvent.doit;
                            if (DEBUG) {
                                this.dump("keyDown eaten by verify", e, verifyEvent);
                            }
                            return;
                        }
                        if (DEBUG) {
                            this.dump("keyDown OK", e, verifyEvent);
                        }
                        iter = AbstractControlContentAssistSubjectAdapter.this.fKeyListeners.iterator();
                        while (iter.hasNext()) {
                            ((KeyListener)iter.next()).keyPressed(keyEvent);
                        }
                        break;
                    }
                    default: {
                        Assert.isTrue((boolean)false);
                    }
                }
            }

            private void dump(String who, Event e, VerifyEvent ve) {
                StringBuffer sb = new StringBuffer("--- [AbstractControlContentAssistSubjectAdapter]\n");
                sb.append(who);
                sb.append(" - e: keyCode=" + e.keyCode + this.hex(e.keyCode));
                sb.append("; character=" + e.character + this.hex(e.character));
                sb.append("; stateMask=" + e.stateMask + this.hex(e.stateMask));
                sb.append("; doit=" + e.doit);
                sb.append("; detail=" + e.detail + this.hex(e.detail));
                sb.append("; widget=" + e.widget);
                sb.append("\n");
                sb.append("  verifyEvent keyCode=" + e.keyCode + this.hex(e.keyCode));
                sb.append("; character=" + e.character + this.hex(e.character));
                sb.append("; stateMask=" + e.stateMask + this.hex(e.stateMask));
                sb.append("; doit=" + ve.doit);
                sb.append("; widget=" + e.widget);
                System.out.println(sb);
            }

            private String hex(int i) {
                return "[0x" + Integer.toHexString(i) + ']';
            }
        };
        this.getControl().addListener(31, this.fControlListener);
        this.getControl().addListener(1, this.fControlListener);
        if (DEBUG) {
            System.out.println("AbstractControlContentAssistSubjectAdapter#installControlListener() - installed");
        }
    }

    private void uninstallControlListener() {
        if (this.fControlListener == null || this.fKeyListeners.size() + this.fVerifyKeyListeners.size() != 0) {
            if (DEBUG) {
                System.out.println("AbstractControlContentAssistSubjectAdapter#uninstallControlListener() -> k: " + this.fKeyListeners.size() + ", v: " + this.fVerifyKeyListeners.size());
            }
            return;
        }
        this.getControl().removeListener(31, this.fControlListener);
        this.getControl().removeListener(1, this.fControlListener);
        this.fControlListener = null;
        if (DEBUG) {
            System.out.println("AbstractControlContentAssistSubjectAdapter#uninstallControlListener() - done");
        }
    }

    public void setContentAssistCueProvider(final ILabelProvider labelProvider) {
        if (this.fCueLabelProvider != null) {
            this.fCueLabelProvider.dispose();
        }
        this.fCueLabelProvider = labelProvider;
        if (labelProvider == null) {
            if (this.fControlDecoration != null) {
                this.fControlDecoration.dispose();
                this.fControlDecoration = null;
            }
        } else {
            if (this.fControlDecoration == null) {
                this.fControlDecoration = new ControlDecoration(this.getControl(), 16512);
                this.getControl().addDisposeListener(new DisposeListener(){

                    public void widgetDisposed(DisposeEvent e) {
                        if (AbstractControlContentAssistSubjectAdapter.this.fCueLabelProvider != null) {
                            AbstractControlContentAssistSubjectAdapter.this.fCueLabelProvider.dispose();
                            AbstractControlContentAssistSubjectAdapter.this.fCueLabelProvider = null;
                        }
                        if (AbstractControlContentAssistSubjectAdapter.this.fControlDecoration != null) {
                            AbstractControlContentAssistSubjectAdapter.this.fControlDecoration.dispose();
                            AbstractControlContentAssistSubjectAdapter.this.fControlDecoration = null;
                        }
                        if (AbstractControlContentAssistSubjectAdapter.this.fCachedDefaultCueImage != null) {
                            AbstractControlContentAssistSubjectAdapter.this.fCachedDefaultCueImage.dispose();
                            AbstractControlContentAssistSubjectAdapter.this.fCachedDefaultCueImage = null;
                        }
                    }
                });
                this.fControlDecoration.setShowHover(true);
                this.fControlDecoration.setShowOnlyOnFocus(true);
            }
            ILabelProviderListener listener = new ILabelProviderListener(){

                public void labelProviderChanged(LabelProviderChangedEvent event) {
                    AbstractControlContentAssistSubjectAdapter.this.fControlDecoration.setDescriptionText(labelProvider.getText((Object)AbstractControlContentAssistSubjectAdapter.this.getControl()));
                    Image image = labelProvider.getImage((Object)AbstractControlContentAssistSubjectAdapter.this.getControl());
                    if (image == null) {
                        image = AbstractControlContentAssistSubjectAdapter.this.getDefaultCueImage();
                    }
                    AbstractControlContentAssistSubjectAdapter.this.fControlDecoration.setImage(image);
                }
            };
            labelProvider.addListener(listener);
            listener.labelProviderChanged(new LabelProviderChangedEvent((IBaseLabelProvider)labelProvider));
        }
    }

    private Image getDefaultCueImage() {
        if (this.fCachedDefaultCueImage == null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.contentassist.AbstractControlContentAssistSubjectAdapter");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ImageDescriptor cueID = ImageDescriptor.createFromFile((Class)clazz, (String)"images/content_assist_cue.gif");
            this.fCachedDefaultCueImage = cueID.createImage((Device)this.getControl().getDisplay());
        }
        return this.fCachedDefaultCueImage;
    }
}

