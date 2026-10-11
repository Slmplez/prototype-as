/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 */
package org.eclipse.debug.internal.core;

import java.util.ArrayList;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IDebugEventSetListener;
import org.eclipse.debug.core.IMemoryBlockListener;
import org.eclipse.debug.core.IMemoryBlockManager;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IMemoryBlock;
import org.eclipse.debug.core.model.IMemoryBlockExtension;
import org.eclipse.debug.core.model.IMemoryBlockRetrieval;

public class MemoryBlockManager
implements IMemoryBlockManager,
IDebugEventSetListener {
    private ArrayList listeners = new ArrayList();
    private ArrayList memoryBlocks = new ArrayList();
    private static final int ADDED = 0;
    private static final int REMOVED = 1;
    static /* synthetic */ Class class$0;

    private MemoryBlockNotifier getMemoryBlockNotifier() {
        return new MemoryBlockNotifier();
    }

    public void addMemoryBlocks(IMemoryBlock[] mem) {
        if (this.memoryBlocks == null) {
            return;
        }
        if (mem == null) {
            DebugPlugin.logMessage("Null argument passed into IMemoryBlockManager.addMemoryBlock", null);
            return;
        }
        if (mem.length > 0) {
            ArrayList<IMemoryBlock> newMemoryBlocks = new ArrayList<IMemoryBlock>();
            int i = 0;
            while (i < mem.length) {
                if (!this.memoryBlocks.contains(mem[i])) {
                    newMemoryBlocks.add(mem[i]);
                    this.memoryBlocks.add(mem[i]);
                    if (this.memoryBlocks.size() == 1) {
                        DebugPlugin.getDefault().addDebugEventListener(this);
                    }
                }
                ++i;
            }
            this.notifyListeners(newMemoryBlocks.toArray(new IMemoryBlock[newMemoryBlocks.size()]), 0);
        }
    }

    public void removeMemoryBlocks(IMemoryBlock[] memBlocks) {
        if (this.memoryBlocks == null) {
            return;
        }
        if (memBlocks == null) {
            DebugPlugin.logMessage("Null argument passed into IMemoryBlockManager.removeMemoryBlock", null);
            return;
        }
        if (memBlocks.length > 0) {
            int i = 0;
            while (i < memBlocks.length) {
                this.memoryBlocks.remove(memBlocks[i]);
                if (this.memoryBlocks.size() == 0) {
                    DebugPlugin.getDefault().removeDebugEventListener(this);
                }
                if (memBlocks[i] instanceof IMemoryBlockExtension) {
                    try {
                        ((IMemoryBlockExtension)memBlocks[i]).dispose();
                    }
                    catch (DebugException e) {
                        DebugPlugin.log((Throwable)((Object)e));
                    }
                }
                ++i;
            }
            this.notifyListeners(memBlocks, 1);
        }
    }

    public void addListener(IMemoryBlockListener listener) {
        if (this.listeners == null) {
            return;
        }
        if (listener == null) {
            DebugPlugin.logMessage("Null argument passed into IMemoryBlockManager.addListener", null);
            return;
        }
        if (!this.listeners.contains(listener)) {
            this.listeners.add(listener);
        }
    }

    public void removeListener(IMemoryBlockListener listener) {
        if (this.listeners == null) {
            return;
        }
        if (listener == null) {
            DebugPlugin.logMessage("Null argument passed into IMemoryBlockManager.removeListener", null);
            return;
        }
        if (this.listeners.contains(listener)) {
            this.listeners.remove(listener);
        }
    }

    public IMemoryBlock[] getMemoryBlocks() {
        return this.memoryBlocks.toArray(new IMemoryBlock[this.memoryBlocks.size()]);
    }

    public IMemoryBlock[] getMemoryBlocks(IDebugTarget debugTarget) {
        IMemoryBlock[] blocks = this.memoryBlocks.toArray(new IMemoryBlock[this.memoryBlocks.size()]);
        ArrayList<IMemoryBlock> memoryBlocksList = new ArrayList<IMemoryBlock>();
        int i = 0;
        while (i < blocks.length) {
            if (blocks[i].getDebugTarget() == debugTarget) {
                memoryBlocksList.add(blocks[i]);
            }
            ++i;
        }
        return memoryBlocksList.toArray(new IMemoryBlock[memoryBlocksList.size()]);
    }

    public IMemoryBlock[] getMemoryBlocks(IMemoryBlockRetrieval retrieve) {
        IMemoryBlock[] blocks = this.memoryBlocks.toArray(new IMemoryBlock[this.memoryBlocks.size()]);
        ArrayList<IMemoryBlock> memoryBlocksList = new ArrayList<IMemoryBlock>(blocks.length);
        int i = 0;
        while (i < blocks.length) {
            if (blocks[i] instanceof IMemoryBlockExtension) {
                if (((IMemoryBlockExtension)blocks[i]).getMemoryBlockRetrieval() == retrieve) {
                    memoryBlocksList.add(blocks[i]);
                }
            } else {
                IMemoryBlockRetrieval mbRetrieval;
                IMemoryBlock iMemoryBlock = blocks[i];
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.debug.core.model.IMemoryBlockRetrieval");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((mbRetrieval = (IMemoryBlockRetrieval)iMemoryBlock.getAdapter(clazz)) == null) {
                    mbRetrieval = blocks[i].getDebugTarget();
                }
                if (mbRetrieval == retrieve) {
                    memoryBlocksList.add(blocks[i]);
                }
            }
            ++i;
        }
        return memoryBlocksList.toArray(new IMemoryBlock[memoryBlocksList.size()]);
    }

    private void notifyListeners(IMemoryBlock[] memBlocks, int event) {
        this.getMemoryBlockNotifier().notify(memBlocks, event);
    }

    public void handleDebugEvents(DebugEvent[] events) {
        int i = 0;
        while (i < events.length) {
            this.handleDebugEvent(events[i]);
            ++i;
        }
    }

    public void handleDebugEvent(DebugEvent event) {
        Object obj = event.getSource();
        IDebugTarget dt = null;
        if (event.getKind() == 8 && obj instanceof IDebugTarget) {
            dt = (IDebugTarget)obj;
            IMemoryBlock[] deletedMemoryBlocks = this.getMemoryBlocks(dt);
            this.removeMemoryBlocks(deletedMemoryBlocks);
        }
    }

    public void shutdown() {
        if (this.listeners != null) {
            this.listeners.clear();
            this.listeners = null;
        }
        if (this.memoryBlocks != null) {
            this.memoryBlocks.clear();
            this.memoryBlocks = null;
        }
    }

    class MemoryBlockNotifier
    implements ISafeRunnable {
        private IMemoryBlockListener fListener;
        private int fType;
        private IMemoryBlock[] fMemoryBlocks;

        MemoryBlockNotifier() {
        }

        public void handleException(Throwable exception) {
            DebugPlugin.log(exception);
        }

        public void run() throws Exception {
            switch (this.fType) {
                case 0: {
                    this.fListener.memoryBlocksAdded(this.fMemoryBlocks);
                    break;
                }
                case 1: {
                    this.fListener.memoryBlocksRemoved(this.fMemoryBlocks);
                }
            }
        }

        public void notify(IMemoryBlock[] memBlocks, int update) {
            if (MemoryBlockManager.this.listeners != null) {
                this.fType = update;
                IMemoryBlockListener[] copiedListeners = MemoryBlockManager.this.listeners.toArray(new IMemoryBlockListener[MemoryBlockManager.this.listeners.size()]);
                int i = 0;
                while (i < copiedListeners.length) {
                    this.fListener = copiedListeners[i];
                    this.fMemoryBlocks = memBlocks;
                    SafeRunner.run((ISafeRunnable)this);
                    ++i;
                }
            }
            this.fListener = null;
            this.fMemoryBlocks = null;
        }
    }
}

