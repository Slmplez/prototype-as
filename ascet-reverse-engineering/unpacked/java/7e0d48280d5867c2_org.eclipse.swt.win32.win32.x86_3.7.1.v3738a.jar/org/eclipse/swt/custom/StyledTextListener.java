/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.BidiSegmentEvent;
import org.eclipse.swt.custom.BidiSegmentListener;
import org.eclipse.swt.custom.CaretEvent;
import org.eclipse.swt.custom.CaretListener;
import org.eclipse.swt.custom.ExtendedModifyEvent;
import org.eclipse.swt.custom.ExtendedModifyListener;
import org.eclipse.swt.custom.LineBackgroundEvent;
import org.eclipse.swt.custom.LineBackgroundListener;
import org.eclipse.swt.custom.LineStyleEvent;
import org.eclipse.swt.custom.LineStyleListener;
import org.eclipse.swt.custom.MovementEvent;
import org.eclipse.swt.custom.MovementListener;
import org.eclipse.swt.custom.PaintObjectEvent;
import org.eclipse.swt.custom.PaintObjectListener;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.custom.TextChangeListener;
import org.eclipse.swt.custom.TextChangedEvent;
import org.eclipse.swt.custom.TextChangingEvent;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.TypedListener;

class StyledTextListener
extends TypedListener {
    StyledTextListener(SWTEventListener listener) {
        super(listener);
    }

    public void handleEvent(Event e) {
        switch (e.type) {
            case 3000: {
                ExtendedModifyEvent extendedModifyEvent = new ExtendedModifyEvent((StyledTextEvent)e);
                ((ExtendedModifyListener)this.eventListener).modifyText(extendedModifyEvent);
                break;
            }
            case 3001: {
                LineBackgroundEvent lineBgEvent = new LineBackgroundEvent((StyledTextEvent)e);
                ((LineBackgroundListener)this.eventListener).lineGetBackground(lineBgEvent);
                ((StyledTextEvent)e).lineBackground = lineBgEvent.lineBackground;
                break;
            }
            case 3007: {
                BidiSegmentEvent segmentEvent = new BidiSegmentEvent((StyledTextEvent)e);
                ((BidiSegmentListener)this.eventListener).lineGetSegments(segmentEvent);
                ((StyledTextEvent)e).segments = segmentEvent.segments;
                ((StyledTextEvent)e).segmentsChars = segmentEvent.segmentsChars;
                break;
            }
            case 3002: {
                LineStyleEvent lineStyleEvent = new LineStyleEvent((StyledTextEvent)e);
                ((LineStyleListener)this.eventListener).lineGetStyle(lineStyleEvent);
                ((StyledTextEvent)e).ranges = lineStyleEvent.ranges;
                ((StyledTextEvent)e).styles = lineStyleEvent.styles;
                ((StyledTextEvent)e).alignment = lineStyleEvent.alignment;
                ((StyledTextEvent)e).indent = lineStyleEvent.indent;
                ((StyledTextEvent)e).wrapIndent = lineStyleEvent.wrapIndent;
                ((StyledTextEvent)e).justify = lineStyleEvent.justify;
                ((StyledTextEvent)e).bullet = lineStyleEvent.bullet;
                ((StyledTextEvent)e).bulletIndex = lineStyleEvent.bulletIndex;
                ((StyledTextEvent)e).tabStops = lineStyleEvent.tabStops;
                break;
            }
            case 3008: {
                PaintObjectEvent paintObjectEvent = new PaintObjectEvent((StyledTextEvent)e);
                ((PaintObjectListener)this.eventListener).paintObject(paintObjectEvent);
                break;
            }
            case 3005: {
                VerifyEvent verifyEvent = new VerifyEvent(e);
                ((VerifyKeyListener)this.eventListener).verifyKey(verifyEvent);
                e.doit = verifyEvent.doit;
                break;
            }
            case 3006: {
                TextChangedEvent textChangedEvent = new TextChangedEvent((StyledTextContent)e.data);
                ((TextChangeListener)this.eventListener).textChanged(textChangedEvent);
                break;
            }
            case 3003: {
                TextChangingEvent textChangingEvent = new TextChangingEvent((StyledTextContent)e.data, (StyledTextEvent)e);
                ((TextChangeListener)this.eventListener).textChanging(textChangingEvent);
                break;
            }
            case 3004: {
                TextChangedEvent textChangedEvent = new TextChangedEvent((StyledTextContent)e.data);
                ((TextChangeListener)this.eventListener).textSet(textChangedEvent);
                break;
            }
            case 3009: {
                MovementEvent wordBoundaryEvent = new MovementEvent((StyledTextEvent)e);
                ((MovementListener)this.eventListener).getNextOffset(wordBoundaryEvent);
                ((StyledTextEvent)e).end = wordBoundaryEvent.newOffset;
                break;
            }
            case 3010: {
                MovementEvent wordBoundaryEvent = new MovementEvent((StyledTextEvent)e);
                ((MovementListener)this.eventListener).getPreviousOffset(wordBoundaryEvent);
                ((StyledTextEvent)e).end = wordBoundaryEvent.newOffset;
                break;
            }
            case 3011: {
                CaretEvent caretEvent = new CaretEvent((StyledTextEvent)e);
                ((CaretListener)this.eventListener).caretMoved(caretEvent);
                ((StyledTextEvent)e).end = caretEvent.caretOffset;
            }
        }
    }
}

