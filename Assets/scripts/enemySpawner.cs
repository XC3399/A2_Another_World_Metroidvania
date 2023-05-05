using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class enemySpawner : MonoBehaviour
{

    public GameObject Enemy;
    public int xPos;
    public int zPos;
    public int enemyCount;

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine (initialSpawn());    
    }

        IEnumerator initialSpawn()
        {
            while (enemyCount < 3)
            {
                xPos = Random.Range (3, 5);
                zPos = Random.Range (3, 6);
                Instantiate (Enemy, new Vector3(xPos, 0.4f, zPos), Quaternion.identity);
                yield return new WaitForSeconds(1.5f);
                enemyCount += 1;
            }
        }
    
}
