import { AssetPromise, ContentRestorer, request } from "@galacean/engine";
import { GlobalAudioContext } from "./global";
import { Sound } from "./Sound";

/**
 * @internal
 */
export class AudioContentRestorer extends ContentRestorer<Sound> {
  constructor(
    resource: Sound,
    public url: string,
    public requestConfig: any
  ) {
    super(resource);
  }

  override restoreContent(): AssetPromise<Sound> {
    return request<ArrayBuffer>(this.url, this.requestConfig).then((audio) => {
      return GlobalAudioContext.decodeAudioData(audio);
    }).then((audio) => {
      const resource = this.resource;
      resource.setAudioSource(audio);
      return resource;
    });
  }
}