/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.DNDEvent;
import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DragSourceEffect;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;

class DNDListener
extends TypedListener {
    Widget dndWidget;

    DNDListener(SWTEventListener listener) {
        super(listener);
    }

    public void handleEvent(Event e) {
        switch (e.type) {
            case 2008: {
                DragSourceEvent event = new DragSourceEvent((DNDEvent)e);
                DragSourceEffect sourceEffect = ((DragSource)this.dndWidget).getDragSourceEffect();
                if (sourceEffect != null) {
                    sourceEffect.dragStart(event);
                }
                ((DragSourceListener)this.eventListener).dragStart(event);
                event.updateEvent((DNDEvent)e);
                break;
            }
            case 2000: {
                DragSourceEvent event = new DragSourceEvent((DNDEvent)e);
                DragSourceEffect sourceEffect = ((DragSource)this.dndWidget).getDragSourceEffect();
                if (sourceEffect != null) {
                    sourceEffect.dragFinished(event);
                }
                ((DragSourceListener)this.eventListener).dragFinished(event);
                event.updateEvent((DNDEvent)e);
                break;
            }
            case 2001: {
                DragSourceEvent event = new DragSourceEvent((DNDEvent)e);
                DragSourceEffect sourceEffect = ((DragSource)this.dndWidget).getDragSourceEffect();
                if (sourceEffect != null) {
                    sourceEffect.dragSetData(event);
                }
                ((DragSourceListener)this.eventListener).dragSetData(event);
                event.updateEvent((DNDEvent)e);
                break;
            }
            case 2002: {
                DropTargetEvent event = new DropTargetEvent((DNDEvent)e);
                ((DropTargetListener)this.eventListener).dragEnter(event);
                DropTargetEffect dropEffect = ((DropTarget)this.dndWidget).getDropTargetEffect();
                if (dropEffect != null) {
                    dropEffect.dragEnter(event);
                }
                event.updateEvent((DNDEvent)e);
                break;
            }
            case 2003: {
                DropTargetEvent event = new DropTargetEvent((DNDEvent)e);
                ((DropTargetListener)this.eventListener).dragLeave(event);
                DropTargetEffect dropEffect = ((DropTarget)this.dndWidget).getDropTargetEffect();
                if (dropEffect != null) {
                    dropEffect.dragLeave(event);
                }
                event.updateEvent((DNDEvent)e);
                break;
            }
            case 2004: {
                DropTargetEvent event = new DropTargetEvent((DNDEvent)e);
                ((DropTargetListener)this.eventListener).dragOver(event);
                DropTargetEffect dropEffect = ((DropTarget)this.dndWidget).getDropTargetEffect();
                if (dropEffect != null) {
                    dropEffect.dragOver(event);
                }
                event.updateEvent((DNDEvent)e);
                break;
            }
            case 2006: {
                DropTargetEvent event = new DropTargetEvent((DNDEvent)e);
                ((DropTargetListener)this.eventListener).drop(event);
                DropTargetEffect dropEffect = ((DropTarget)this.dndWidget).getDropTargetEffect();
                if (dropEffect != null) {
                    dropEffect.drop(event);
                }
                event.updateEvent((DNDEvent)e);
                break;
            }
            case 2007: {
                DropTargetEvent event = new DropTargetEvent((DNDEvent)e);
                ((DropTargetListener)this.eventListener).dropAccept(event);
                DropTargetEffect dropEffect = ((DropTarget)this.dndWidget).getDropTargetEffect();
                if (dropEffect != null) {
                    dropEffect.dropAccept(event);
                }
                event.updateEvent((DNDEvent)e);
                break;
            }
            case 2005: {
                DropTargetEvent event = new DropTargetEvent((DNDEvent)e);
                ((DropTargetListener)this.eventListener).dragOperationChanged(event);
                DropTargetEffect dropEffect = ((DropTarget)this.dndWidget).getDropTargetEffect();
                if (dropEffect != null) {
                    dropEffect.dragOperationChanged(event);
                }
                event.updateEvent((DNDEvent)e);
            }
        }
    }
}

