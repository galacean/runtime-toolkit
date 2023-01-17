# Navigation Gizmo

Navigation Gizmo shows the current orientation of the view. Dragging it with left mouse buttom will orbit the view. Clicking any of the axis labels will align the view to that axis.

![merge](https://mdn.alipayobjects.com/huamei_qbugvr/afts/img/A*Bpr9TKzbFeYAAAAAAAAAAAAADtKFAQ/original)

## Feature

| Attributes | Meaning |
| :-- | :-- |
| `target` | Navigation Gizmo target point, default (0,0,0). Needs to update when using orbitControl. |
| `position` | Navigation Gizmo position. Normalized expression, the upper left corner is (0, 0), and the lower right corner is (1, 1). Default (0, 0). |
| `size` | Navigation Gizmo size. The length and width of the gizmo area in viewport, default (0.12, 0.12). |
| `camera` | current scene camera |
| `layer` | Navigation Gizmo layer, default Layer30. Ensure this layer is not taken |
| `priority` | Navigation Gizmo camera's priority, larger than any other camera in scene, default 100. |

## Example

[Gizmo-Examples](https://oasisengine.cn/#/examples/latest/gizmo)

## npm

The `Navigation Gizmo` is published on npm with full typing support. To install, use:

```sh
$ npm install @oasis-engine-toolkit/navigation-gizmo
```

This will allow you to import package entirely using:

```javascript
import { NavigationGizmo } from "@oasis-engine-toolkit/navigation-gizmo";
```

## Usage

```ts
// LitePhysics must be initialized
const engine = new WebGLEngine("canvas");
engine.physicsManager.initialize(LitePhysics);
const scene = engine.sceneManager.activeScene;
const rootEntity = scene.createRootEntity();

// Initialize camera entity.
const cameraEntity = rootEntity.createChild("camera");
const camera = cameraEntity.addComponent(Camera);

// add navigation gizmo
const navigationGizmo = rootEntity.addComponent(NavigationGizmo);
navigationGizmo.camera = camera;
```

## Links

- [Repository](https://github.com/ant-galaxy/oasis-engine-toolkit)
- [Documentation](https://oasisengine.cn/#/docs/latest/cn/install)
- [API References](https://oasisengine.cn/#/api/latest/core)

## License

The engine is released under the [MIT](https://opensource.org/licenses/MIT) license. See LICENSE file.