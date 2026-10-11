/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.JobChangeAdapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterImpl
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.sphinx.platform.IExtendedPlatformConstants
 */
package org.eclipse.sphinx.emf.internal.ecore.proxymanagement;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.ProxyHelper;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.blacklist.ModelIndex;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.lookupresolver.EcoreIndex;
import org.eclipse.sphinx.platform.IExtendedPlatformConstants;

@Deprecated
public class ProxyHelperAdapter
extends AdapterImpl
implements ProxyHelper {
    private boolean fIgnoreFragmentBasedProxies = false;
    private IgnoreFragmentBasedProxiesFlagResetter fIgnoreFragmentBasedProxiesFlagResetter = new IgnoreFragmentBasedProxiesFlagResetter();
    private EcoreIndex fLookupResolver = new EcoreIndex();
    private ModelIndex fBlackList = new ModelIndex();

    public boolean isIgnoreFragmentBasedProxies() {
        return this.fIgnoreFragmentBasedProxies;
    }

    public void setIgnoreFragmentBasedProxies(boolean ignore) {
        this.fIgnoreFragmentBasedProxies = ignore;
        if (ignore) {
            Job.getJobManager().addJobChangeListener((IJobChangeListener)this.fIgnoreFragmentBasedProxiesFlagResetter);
        } else {
            Job.getJobManager().removeJobChangeListener((IJobChangeListener)this.fIgnoreFragmentBasedProxiesFlagResetter);
        }
    }

    public EcoreIndex getLookupResolver() {
        return this.fLookupResolver;
    }

    public ModelIndex getBlackList() {
        return this.fBlackList;
    }

    public void dispose() {
        this.fBlackList.dispose();
    }

    public boolean isAdapterForType(Object type) {
        return type == ProxyHelper.class;
    }

    public void setTarget(Notifier newTarget) {
        Assert.isLegal((newTarget == null || newTarget instanceof ResourceSet ? 1 : 0) != 0);
        super.setTarget(newTarget);
    }

    private class IgnoreFragmentBasedProxiesFlagResetter
    extends JobChangeAdapter {
        private IgnoreFragmentBasedProxiesFlagResetter() {
        }

        private boolean isModelLoadingJob(IJobChangeEvent event) {
            Job job;
            if (event != null && (job = event.getJob()) != null) {
                return job.belongsTo(IExtendedPlatformConstants.FAMILY_MODEL_LOADING);
            }
            return false;
        }

        public void done(IJobChangeEvent event) {
            if (this.isModelLoadingJob(event) && Job.getJobManager().find(IExtendedPlatformConstants.FAMILY_MODEL_LOADING).length <= 1) {
                ProxyHelperAdapter.this.setIgnoreFragmentBasedProxies(false);
            }
        }
    }
}

