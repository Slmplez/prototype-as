/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.hyperlink.AbstractHyperlinkDetector
 *  org.eclipse.jface.text.hyperlink.IHyperlink
 *  org.eclipse.jface.text.hyperlink.IHyperlinkDetector
 *  org.eclipse.jface.text.hyperlink.IHyperlinkDetectorExtension
 *  org.eclipse.jface.text.hyperlink.IHyperlinkDetectorExtension2
 */
package org.eclipse.ui.texteditor;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.hyperlink.AbstractHyperlinkDetector;
import org.eclipse.jface.text.hyperlink.IHyperlink;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetector;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetectorExtension;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetectorExtension2;
import org.eclipse.ui.texteditor.HyperlinkDetectorDescriptor;

public final class HyperlinkDetectorRegistry {
    private HyperlinkDetectorDescriptor[] fHyperlinkDetectorDescriptors;
    private IPreferenceStore fPreferenceStore;

    public HyperlinkDetectorRegistry() {
    }

    public HyperlinkDetectorRegistry(IPreferenceStore preferenceStore) {
        this.fPreferenceStore = preferenceStore;
    }

    public synchronized HyperlinkDetectorDescriptor[] getHyperlinkDetectorDescriptors() {
        this.initHyperlinkDetectorDescriptors();
        HyperlinkDetectorDescriptor[] result = new HyperlinkDetectorDescriptor[this.fHyperlinkDetectorDescriptors.length];
        System.arraycopy(this.fHyperlinkDetectorDescriptors, 0, result, 0, this.fHyperlinkDetectorDescriptors.length);
        return result;
    }

    private synchronized void initHyperlinkDetectorDescriptors() {
        if (this.fHyperlinkDetectorDescriptors == null) {
            this.fHyperlinkDetectorDescriptors = HyperlinkDetectorDescriptor.getContributedHyperlinkDetectors();
        }
    }

    public IHyperlinkDetector[] createHyperlinkDetectors(String targetId, IAdaptable context) {
        Assert.isLegal((targetId != null ? 1 : 0) != 0);
        this.initHyperlinkDetectorDescriptors();
        ArrayList<HyperlinkDetectorDelegate> result = new ArrayList<HyperlinkDetectorDelegate>();
        int i = 0;
        while (i < this.fHyperlinkDetectorDescriptors.length) {
            if (targetId.equals(this.fHyperlinkDetectorDescriptors[i].getTargetId())) {
                HyperlinkDetectorDelegate detector = new HyperlinkDetectorDelegate(this.fHyperlinkDetectorDescriptors[i]);
                result.add(detector);
                detector.setContext(context);
            }
            ++i;
        }
        return result.toArray(new IHyperlinkDetector[result.size()]);
    }

    private class HyperlinkDetectorDelegate
    implements IHyperlinkDetector,
    IHyperlinkDetectorExtension,
    IHyperlinkDetectorExtension2 {
        private HyperlinkDetectorDescriptor fHyperlinkDescriptor;
        private AbstractHyperlinkDetector fHyperlinkDetector;
        private boolean fFailedDuringCreation = false;
        private IAdaptable fContext;
        private int fStateMask;
        private boolean fIsEnabled;

        private HyperlinkDetectorDelegate(HyperlinkDetectorDescriptor descriptor) {
            this.fHyperlinkDescriptor = descriptor;
            if (HyperlinkDetectorRegistry.this.fPreferenceStore != null) {
                this.fStateMask = HyperlinkDetectorRegistry.this.fPreferenceStore.getInt(String.valueOf(this.fHyperlinkDescriptor.getId()) + "_stateMask");
                this.fIsEnabled = !HyperlinkDetectorRegistry.this.fPreferenceStore.getBoolean(this.fHyperlinkDescriptor.getId());
            }
        }

        public IHyperlink[] detectHyperlinks(ITextViewer textViewer, IRegion region, boolean canShowMultipleHyperlinks) {
            if (!this.isEnabled()) {
                return null;
            }
            if (!this.fFailedDuringCreation && this.fHyperlinkDetector == null) {
                try {
                    this.fHyperlinkDetector = this.fHyperlinkDescriptor.createHyperlinkDetector();
                }
                catch (CoreException coreException) {
                    this.fFailedDuringCreation = true;
                }
                if (this.fHyperlinkDetector != null && this.fContext != null) {
                    this.fHyperlinkDetector.setContext(this.fContext);
                }
            }
            if (this.fHyperlinkDetector != null) {
                return this.fHyperlinkDetector.detectHyperlinks(textViewer, region, canShowMultipleHyperlinks);
            }
            return null;
        }

        private boolean isEnabled() {
            return this.fIsEnabled;
        }

        private void setContext(IAdaptable context) {
            this.fContext = context;
        }

        public void dispose() {
            if (this.fHyperlinkDetector != null) {
                this.fHyperlinkDetector.dispose();
                this.fHyperlinkDetector = null;
            }
            this.fHyperlinkDescriptor = null;
            this.fContext = null;
        }

        public int getStateMask() {
            return this.fStateMask;
        }
    }
}

